# google-code-prettify-rails

This gem provides:

* google-code-prettify revision 187

## Rails 3.1

For Rails 3.1 and greater, the files will be added to the asset pipeline and available for you to use.

### Installation

In Rails 3.1 apps include the google-code-prettify-rails gem in your the Gemfile and run `bundle install`. Then add the folling to your application.js

  //= require google-code-prettify-rails/prettify

And add the same to your application.css

  //= require google-code-prettify-rails/prettify

Depending on the language you wish the include you will need to specify the following in your application.js, replacing the identifier with one of the supported language names.

  //= require google-code-prettify-rails/lang-#{identifier}

All of the languages currently supported by google-code-prettify are as follows:

  //= require google-code-prettify-rails/lang-apollo
  //= require google-code-prettify-rails/lang-cli
  //= require google-code-prettify-rails/lang-css
  //= require google-code-prettify-rails/lang-go
  //= require google-code-prettify-rails/lang-hs
  //= require google-code-prettify-rails/lang-lisp
  //= require google-code-prettify-rails/lang-lua
  //= require google-code-prettify-rails/lang-ml
  //= require google-code-prettify-rails/lang-n
  //= require google-code-prettify-rails/lang-proto
  //= require google-code-prettify-rails/lang-scala
  //= require google-code-prettify-rails/lang-sql
  //= require google-code-prettify-rails/lang-tex
  //= require google-code-prettify-rails/lang-vb
  //= require google-code-prettify-rails/lang-vhdl
  //= require google-code-prettify-rails/lang-wiki
  //= require google-code-prettify-rails/lang-xq
  //= require google-code-prettify-rails/lang-yaml

## Rails 3.0

This gem adds a single generator to Rails 3, google-code-prettify-rails:install. Running the generator will fetch google-code-prettify Rails, and (optionally) fetch the required languages you wish to include.

### Installation

In your Gemfile, add this line:

    gem "google-code-prettify-rails"

Then, run `bundle install`. To invoke the generator, run:

    rails generate google-code-prettify-rails:install #--css --sql to enable css and sql syntax highlighting