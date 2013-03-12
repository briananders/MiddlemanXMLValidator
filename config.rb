###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end



# def validate(document_path, schema_path, root_element)
#     schema = Nokogiri::XML::Schema(File.read(schema_path))
#     document = Nokogiri::XML(File.read(document_path))
#     schema.validate(document.xpath("//#{root_element}").to_s)
# end

require 'validate.rb' 

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
    # For example, change the Compass output style for deployment
    # activate :minify_css

    # Minify Javascript on build
    # activate :minify_javascript

    # Enable cache buster
    # activate :cache_buster

    # Use relative URLs
    # activate :relative_assets

    # Compress PNGs after build
    # First: gem install middleman-smusher
    # require "middleman-smusher"
    # activate :smusher

    # Or use a different image path
    # set :http_path, "/Content/images/"

    puts "--Before Build--"

    activate :my_feature
end