module Middleman
  module Xmlvalidator
    class << self
			def registered(app)
				require 'nokogiri'

				app.after_build do |builder|
					puts "", "Validating with NokoGiri", ""

					Dir.glob("build/**/*.{xml,rss}").each do |full_path|
						Xmlvalidator.validate_file(full_path)
					end

					puts "", "Validation with NokoGiri " + "Complete".green, ""
				end
			end

			alias :included :registered
		end

		def self.validate_file(file_path)
			file_name = file_path.split('/').last
			validator_file = file_name.gsub(/\.\w*/, '.xsd')
			schema_path = File.join(File.dirname(__FILE__), '/schema/')
			schema_path += File.exists?(schema_path + validator_file) ? validator_file : (file_name.end_with?('.rss') ? "RSSSchema.xsd" : "XMLSchema.xsd")

			errors = Xmlvalidator.validate(file_path, schema_path)
			puts "  validating".blue + "  #{file_path}....." + (errors.size == 0 ? "COMPLETE".green : "ERRORS FOUND".red)
			errors.each { |error| puts "     " + error.message }
		end

		def self.validate(document_path, schema_path)
			schema = Nokogiri::XML::Schema(File.read(schema_path))			
			document = Nokogiri::XML(File.read(document_path))
			schema.validate(document)
		end

	end
end