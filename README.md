Sinatra Bootstrap
=================

Get a skeleton [sinatra](http://www.sinatrarb.com/) app up and running before you finish wishing you
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

The optional `pow` variant may be added to generate a `tmp/always_restart.txt` to configure pow.cx to restart the server after each request.

### Heroku

    take_the_stage heroku

When passed `heroku` sinatra bootstrap will generate a more complete
`Gemfile` containing [thin](http://code.macournoyer.com/thin/),
[heroku](https://github.com/heroku/heroku), and [foreman](https://github.com/ddollar/foreman). It also outputs a simple `config.ru` and `Procfile`
