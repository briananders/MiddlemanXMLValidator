# validate.rb

require 'rubygems'
gem 'nokogiri'
require 'nokogiri'

module Middleman
	module ValidateNokoGiri
		class << self
			def registered(app)
				app.after_build do |builder|
					puts "" , "Validating with NokoGiri"
					Dir.glob("build/*BingSiteAuth.xml").each do |full_path|
						puts "" , "   Validating #{full_path}....." + (ValidateNokoGiri.valid(full_path, 'BingSiteAuth.xsd') == true ? "COMPLETE".green : "ERRORS FOUND".red)
						ValidateNokoGiri.validate(full_path, 'BingSiteAuth.xsd').each do |error|
							puts "     " + error.message
						end
					end
					Dir.glob("build/*crossdomain.xml").each do |full_path|
						puts "" , "   Validating #{full_path}....." + (ValidateNokoGiri.valid(full_path, 'XMLSchema.xsd') == true ? "COMPLETE".green : "ERRORS FOUND".red)
						ValidateNokoGiri.validate(full_path, 'XMLSchema.xsd').each do |error|
							puts "     " + error.message
						end
					end
					Dir.glob("build/*Sitemap.xml").each do |full_path|
						puts "" , "   Validating #{full_path}....." + (ValidateNokoGiri.valid(full_path, 'Sitemap3.xsd') == true ? "COMPLETE".green : "ERRORS FOUND".red)
						ValidateNokoGiri.validate(full_path, 'Sitemap3.xsd').each do |error|
							puts "     " + error.message
						end
					end
					Dir.glob("build/*.rss").each do |full_path|
						puts "" , "   Validating #{full_path}....." + (ValidateNokoGiri.valid(full_path, 'RSSSchema.xsd') == true ? "COMPLETE".green : "ERRORS FOUND".red)
						ValidateNokoGiri.validate(full_path, 'RSSSchema.xsd').each do |error|
							puts "     " + error.message
						end
					end
					puts "" , "Validation with NokoGiri Complete" , ""
				end
			end
			alias :included :registered
		end

		def self.validate(document_path, schema_path)
			schema = Nokogiri::XML::Schema(File.read("./schema/" + schema_path))
			document = Nokogiri::XML(File.read(document_path))
			schema.validate(document)
		end

		def self.valid(document_path, schema_path)
			schema = Nokogiri::XML::Schema(File.read("./schema/" + schema_path))
			document = Nokogiri::XML(File.read(document_path))
			schema.valid?(document)
		end
	end
end

::Middleman::Extensions.register(:validate_nokogiri, Middleman::ValidateNokoGiri)