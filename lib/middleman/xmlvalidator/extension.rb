module Middleman
  module Xmlvalidator
    class << self
			def registered(app)
				require 'nokogiri'

				app.after_build do |builder|
					puts "", "Validating with NokoGiri", ""
					p Xmlvalidator.files_to_validate

					Xmlvalidator.files_to_validate.each do |full_path|
						file_name = full_path.split('/').last
						validator_file = file_name.gsub(/\.\w*/, '.xsd')
						validator_filepath = File.join(File.dirname(__FILE__), '/schema/' + validator_file)
						validator = File.exists?(validator_filepath) ? validator_file : (file_name.end_with?('.rss') ? "RSSSchema.xsd" : "XMLSchema.xsd")

						puts "  validating".blue + "  #{full_path}....." + (Xmlvalidator.valid(full_path, validator) == true ? "COMPLETE".green : "ERRORS FOUND".red)
						Xmlvalidator.validate(full_path, validator).each do |error|
							puts "     " + error.message
						end
					end

					puts "", "Validation with NokoGiri " + "Complete".green, ""
				end
			end

			def files_to_validate
				Dir.glob("build/**/*.{xml,rss}")
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