module Middleman
  module Xmlvalidator
    class << self
			def registered(app)
				require 'nokogiri'
				app.after_build do |builder|
					puts "", "Validating with NokoGiri", ""

					files = ['.xml', '.rss'].collect { |extension| Dir.glob("build/**/*" + extension) }.flatten
					files.each do |full_path|
						name, validator = full_path.split('/').last

						validator = case name
						when "BingSiteAuth.xml"
							"BingSiteAuth.xsd"
						when "crossdomain.xml"
							"crossdomain.xsd"
						when "sitemap.xml"
							"Sitemap3.xsd"
						when "feed.rss"
							"RSSSchema.xsd"
						else
							"XMLSchema.xsd"
						end

						puts "  validating".blue + "  #{full_path}....." + (Xmlvalidator.valid(full_path, validator) == true ? "COMPLETE".green : "ERRORS FOUND".red)
						Xmlvalidator.validate(full_path, validator).each do |error|
							puts "     " + error.message
							builder.instance_eval { @had_errors = true if !@had_errors } if name == "feed.rss"
						end
					end

					puts "", "Validation with NokoGiri " + "Complete".green, ""
				end
			end
			alias :included :registered
		end

		def self.validate(document_path, schema_path)
			schema = Nokogiri::XML::Schema(File.read(File.join(File.dirname(File.expand_path(__FILE__)), "./schema/" + schema_path)))
			document = Nokogiri::XML(File.read(document_path))
			schema.validate(document)
		end

		def self.valid(document_path, schema_path)
			schema = Nokogiri::XML::Schema(File.read(File.join(File.dirname(File.expand_path(__FILE__)), "./schema/" + schema_path)))
			document = Nokogiri::XML(File.read(document_path))
			schema.valid?(document)
		end
	end
end