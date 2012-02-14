# -*- encoding: utf-8 -*-
require File.expand_path('../lib/google-code-prettify/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "google-code-prettify-rails"
  s.version     = GoogleCodePrettify::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ryan Montgomery"]
  s.email       = ["rmontgomery429@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/google-code-prettify-rails"
  s.summary     = "Use Google Code Prettify with Rails 3"
  s.description = "This gem provides a Javascript module and CSS file that allows syntax highlighting of source code snippets in an html page for your Rails 3 application."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "google-code-prettify-rails"

  s.add_dependency "railties", ">= 3.2.0.beta", "< 5.0"
  s.add_dependency "thor",     "~> 0.14"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end