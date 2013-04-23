# validate.rb
require 'libxml'

module MyFeature
    class << self
        def registered(app)
            app.after_build do |builder|
                puts "","--After Build--",""
                Dir.glob("build/*BingSiteAuth.xml").each do |full_path|
                	puts "","   Validating BingSiteAuth.xml.....  " + full_path

                     MyFeature.validate_file(full_path, 'XMLSchema.xsd')
                	
                end
                Dir.glob("build/*crossdomain.xml").each do |full_path|
                  puts "","   Validating crossdomain.xml.....  " + full_path

                     MyFeature.validate_file(full_path, 'XMLSchema.xsd')
                  
                end
                Dir.glob("build/*Sitemap.xml").each do |full_path|
                  puts "","   Validating Sitemap.xml.....  " + full_path

                     MyFeature.validate_file(full_path, 'Sitemap.xsd')
                  
                end
                Dir.glob("build/*.rss").each do |full_path|
                	puts "","   Validating RSS.....  " + full_path

                     MyFeature.validate_file(full_path, 'RSSSchema.xsd')
                	
                end
                puts "","--Done Validating--",""
            end
        end
        alias :included :registered
    end

  def self.validate_abstract(xsd, &block)
    begin
      messages = []
      document = block.call
      schema = File.exist?("#{xsd}") ? ::LibXML::XML::Schema.new(xsd) : ::XML::Schema.from_string(xsd)
      result = document.validate_schema(schema) do |message|
        messages << message
      end
    rescue Exception => e
      messages << "General Error: #{e.message}"
    end
    [result || false, messages * ' ']
  end


  def self.validate_file(xml_filename, xsd)
    validate_abstract(xsd) do
      ::LibXML::XML::Document.file(xml_filename)
    end
  end

  def self.validate_string(xml_string, xsd)
    validate_abstract(xsd) do
      ::LibXML::XML::Document.string(xml_string)
    end
  end
end

::Middleman::Extensions.register(:my_feature, MyFeature)