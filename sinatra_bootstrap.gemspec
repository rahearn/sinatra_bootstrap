Gem::Specification.new do |s|
  s.name         = 'sinatra_bootstrap'

  s.version      = '0.2.1'

  s.platform     = Gem::Platform::RUBY
  s.license      = 'MIT'
  s.authors      = ['Ryan Ahearn']
  s.email        = 'ryan@coshx.com'
  s.homepage     = 'http://github.com/rahearn/sinatra_bootstrap'
  s.summary      = 'sinatra_bootstrap'
  s.description  = 'Quick Sinatra app setup'

  s.files        = `git ls-files -- lib/*`.split("\n")
  s.files       += %W[README.md]
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename f }
  s.require_path = 'lib'


  s.add_runtime_dependency 'thor',          '~> 0.14'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec',     '~> 3.10'
  s.add_development_dependency 'simplecov', '~> 0.21'
  s.add_development_dependency 'bundler',   '~> 2.2.18'
end
