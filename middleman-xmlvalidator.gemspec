# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'middleman/xmlvalidator/version'
require 'middleman/xmlvalidator/extension'


Gem::Specification.new do |g|
  g.name          = Middleman::Xmlvalidator::PACKAGE
  g.version       = Middleman::Xmlvalidator::VERSION
  g.authors       = ["briananders"]
  g.email         = ["anders.brian@icloud.com"]
  g.description   = %q{This gem is a middleman extension that is used for validating xml and rss files in your build folder.}
  g.summary       = %q{middleman extension to validate xml and rss files.}
  g.homepage      = "http://briananders.me"
  g.license       = "MIT"

  g.files         = `git ls-files`.split($/)
  g.executables   = g.files.grep(%r{^bin/}) { |f| File.basename(f) }
  g.test_files    = g.files.grep(%r{^(test|g|features)/})
  g.require_paths = ["lib"]

  g.add_development_dependency("bundler", ["~> 1.3"])
  g.add_development_dependency("rake")

  g.add_runtime_dependency("nokogiri", [">1.5.6"])
  g.add_runtime_dependency("middleman", ["> 3.0.12"])
end
