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
                   "lib/middleman_xmlvalidator.rb",
                   "lib/middleman-xmlvalidator.rb",
                   "lib/middleman-xmlvalidator/validate.rb",
                   "lib/schema/RSSSchema.xsd",
                   "lib/schema/Sitemap2.xsd",
                   "lib/schema/Sitemap3.xsd",
                   "lib/schema/BingSiteAuth.xsd",
                   "lib/schema/crossdomain.xsd"
                 ]

  s.add_runtime_dependency("middleman", ["~> 3.0.12"])
  s.add_development_dependency("middleman", ["~> 3.0.12"])
  s.add_development_dependency("nokogiri", ["~> 1.5.6"])
end