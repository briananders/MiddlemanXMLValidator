require 'middleman-core'

require 'middleman/xmlvalidator/version'
require 'middleman/xmlvalidator/extension'

::Middleman::Extensions.register(:validate, ::Middleman::Xmlvalidator)