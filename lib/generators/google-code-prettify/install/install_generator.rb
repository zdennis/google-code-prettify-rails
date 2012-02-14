require 'rails'

# Supply generator for Rails 3.0.x or if asset pipeline is not enabled
if ::Rails.version < "3.1" || !::Rails.application.config.assets.enabled
  module GoogleCodePrettify
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        LANGUAGES = [:apollo, :cli, :css, :go, :hs, :lisp, :lua, :ml, :n, :proto, :scala, :sql, :tex, :vb, :vhdl, :wiki, :xq, :yaml]

        desc "This generator installs Google Code Prettify #{GoogleCodePrettify::Rails::VERSION}"

        LANGUAGES.each do |lang|
          class_option lang, :type => :boolean, :default => false, :desc => "Include #{lang.to_s}"
        end

        source_root File.expand_path('../../../../../vendor/assets', __FILE__)

        def copy_prettify
          say_status("copying", "Google Code Prettify (#{GoogleCodePrettify::Rails::VERSION})", :green)
          copy_file "javascripts/prettify.js", "public/javascripts/prettify.js"
          copy_file "stylesheets/prettify.css", "public/stylesheets/prettify.css"
        end

        def copy_languages
          LANGUAGES.each do |lang|
            if options.send "#{lang}?".to_sym
              say_status("copying", "#{lang}", :green)
              copy_file "javascripts/lang-#{lang}.js", "public/javascripts/lang-#{lang}.js"
            end
          end
        end
      end
    end
  end
else
  module GoogleCodePrettify
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        desc "Just show instructions so people will know what to do when mistakenly using generator for Rails 3.1 apps"

        def do_nothing
          say_status("deprecated", "You are using Rails 3.1 with the asset pipeline enabled, so this generator is not needed.")
          say_status("", "The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//= require google-code-prettify` and `//= require ` to your app/assets/javascripts/application.js")
          say_status("", "If you do not want the asset pipeline enabled, you may turn it off in application.rb and re-run this generator.")
        end
      end
    end
  end
end