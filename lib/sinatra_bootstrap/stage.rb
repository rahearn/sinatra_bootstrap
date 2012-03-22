require 'thor'

module SinatraBootstrap

  class Stage < Thor
    include Thor::Actions
    def self.source_root
      File.join File.dirname(__FILE__), 'templates'
    end

    desc 'sinatra', 'Installs Gemfile and main.rb'
    def sinatra
      copy_file 'Gemfile-bare', 'Gemfile'
      copy_file 'main.rb'
      say 'Simple startup:'
      say '  bundle install'
      say '  ruby ./main.rb'
    end

    # desc 'rackup', 'Install sinatra files plus config.ru'
    # method_options
    # def rackup
    #   invoke :sinatra
    # end

  end

end
