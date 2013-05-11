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

  s.files         = [".gitignore",
                     ".travis.yml",
                     "Gemfile",
                     "Gemfile.lock",
                     "README.md",
                     "Rakefile",
                     "lib/middleman-xmlvalidator.rb",
                     "lib/middleman-xmlvalidator/feature.rb",
                     "lib/middleman-xmlvalidator/version.rb",
                     "lib/middleman_xmlvalidator.rb",
                     "lib/schema/BingSiteAuth.xsd",
                     "lib/schema/RSSSchema.xsd",
                     "lib/schema/Sitemap2.xsd",
                     "lib/schema/Sitemap3.xsd",
                     "lib/schema/XMLSchema.xsd",
                     "lib/schema/crossdomain.xsd",
                     "xmlvalidator.gemspec"]
                     
  s.require_paths = ["lib"]
end