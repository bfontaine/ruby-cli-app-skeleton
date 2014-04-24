require './lib/{LIB}'

Gem::Specification.new do |s|
    s.name          = '{GEM}'
    s.version       = {MODULE}.version
    s.date          = Time.now

   #s.summary       = 'TODO'
   #s.description   = 'TODO'
    s.license       = 'MIT'

    s.author        = '{AUTHOR}'
    s.email         = '{EMAIL}'
    s.homepage      = 'https://github.com/bfontaine/{REPO}'

    s.files         = Dir['lib/**/*.rb']
    s.test_files    = Dir['tests/**/*.rb']
    s.require_path  = 'lib'
    s.executables  << '{CLI}'

    s.add_runtime_dependency 'nokogiri', '~>1.6.1'
    s.add_runtime_dependency 'trollop',  '~>2.0'
    s.add_runtime_dependency 'colored',  '~>1.2'

    s.add_development_dependency 'simplecov'
    s.add_development_dependency 'rake'
    s.add_development_dependency 'test-unit'
    s.add_development_dependency 'fakeweb'
    s.add_development_dependency 'coveralls'
end
