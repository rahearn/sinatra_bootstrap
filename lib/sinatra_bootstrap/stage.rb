require 'thor'

module SinatraBootstrap

  class Stage < Thor

    desc 'sinatra', 'Installs Gemfile and main.rb'
    def sinatra
      SinatraBootstrap::Generator.start
    end

    desc 'rackup', 'Installs base files plus config.ru rackup'
    def rackup
    end

  end

end
