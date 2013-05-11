# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)

Gem::Specification.new do |s|
  s.name        = "xmlvalidator"
  s.version     = '0.0.1'
  s.date        = '2013-04-28'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Anders"]
  s.homepage    = "https://github.com/briananders/MiddlemanXMLValidator"
  s.summary     = "Middleman extension to validate xml"
  s.description = "Middleman extension to validate xml using NokoGiri"
  s.email       = 'example@email.com'
    
  s.rubyforge_project = "middleman-xmlvalidator"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end