Sinatra Bootstrap
=================

Get a skeleton sinatra app up and running before you finish wishing you
had an idea

Install
-------

    gem install sinatra_bootstrap

Usage
-----

### Sinatra-only application

    take_the_stage sinatra

Wow, that was easy. `take_the_stage sinatra` will generate a `Gemfile`
specifying only `gem 'sinatra', '~> 1.3'` as well as a `main.rb` file to
hold your application.

### Rack application

    take_the_stage sinatra --rackup

The `rackup` variant will also generate a `config.ru` file suitable for
deploying your application on a Rack-based server.
