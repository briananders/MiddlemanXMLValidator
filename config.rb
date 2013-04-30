##config.rb

# def validate(document_path, schema_path, root_element)
#     schema = Nokogiri::XML::Schema(File.read(schema_path))
#     document = Nokogiri::XML(File.read(document_path))
#     schema.validate(document.xpath("//#{root_element}").to_s)
# end

# require 'rubygems'
# gem 'nokogiri'
# require 'nokogiri'
# require 'libxml-ruby'
require 'validate.rb' 

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'


configure :build do

    puts "","--Before Build--",""

    activate :validate_libxml
    activate :validate_nokogiri
end