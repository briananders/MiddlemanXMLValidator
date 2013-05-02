# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)

Gem::Specification.new do |s|
  s.name        = "xmlvalidator"
  s.version     = '1.0.0'
  s.date        = '2013-04-28'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brian Anders"]
  s.homepage    = "https://github.com/briananders/MiddlemanXMLValidator"
  s.summary     = "Middleman extension to validate xml"
  s.description = "Middleman extension to validate xml using NokoGiri"
  s.email       = 'example@email.com'
  s.files       = ["Gemfile",
                   "Gemfile.lock",
                   "README.md",
                   "Rakefile",
                   "lib/middleman-xmlvalidator.rb",
                   "lib/middleman-xmlvalidator/version.rb",
                   "lib/middleman-xmlvalidator/middleman_xmlvalidator.rb",
                   "lib/middleman-xmlvalidator/xmlvalidator.rb",
                   "lib/middleman-schema/RSSSchema.xsd",
                   "lib/middleman-schema/Sitemap.xsd",
                   "lib/middleman-schema/XMLSchema.xsd",
                   "lib/middleman-schema/XMLSchemaa.xsd"
                 ]
end