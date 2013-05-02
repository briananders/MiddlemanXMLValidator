require "middleman-core"
  
# Register the extension this is called during `activate :middleman_example_extension`
::Middleman::Extensions.register(:validate_nokogiri) do
  ::Middleman::ValidateNokoGiri
end
::Middleman::Extensions.register(:validate_libxml) do
  ::Middleman::ValidateLibXml
end


#::Middleman::Extensions.register(:validate_libxml, ValidateLibXml)
#::Middleman::Extensions.register(:validate_nokogiri, ValidateNokoGiri)