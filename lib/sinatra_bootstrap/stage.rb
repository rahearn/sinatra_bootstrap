require 'thor'

module SinatraBootstrap

  class Stage < Thor
    include Thor::Actions
    def self.source_root
      File.join File.dirname(__FILE__), 'templates'
    end

    desc 'sinatra', 'Installs Gemfile and main.rb'
    method_option :rackup, :type => :boolean, :desc => 'Create a config.ru file', :default => false
    def sinatra
      copy_file 'Gemfile-bare', 'Gemfile'
      copy_file 'config.ru' if options[:rackup]
      copy_file 'main.rb'
      say 'Simple startup:'
      say '  bundle install'
      say '  ruby ./main.rb'
    end

    desc 'heroku', 'Install base files for running Sinatra on Heroku'
    def heroku
      copy_file 'Gemfile-heroku', 'Gemfile'
      copy_file 'config.ru'
      copy_file 'Procfile'
      copy_file 'main.rb'
      say 'Simple development startup:'
      say '  bundle install'
      say '  foreman start'
    end
  end

end
