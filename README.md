## Middleman-XMLValidator

A middleman extension that will search for all .xml and .rss files and check their validation against a .xsd schema.

### Usage:

You'll first have to download and install the gem.

	$ git clone git://github.com/briananders/MiddlemanXMLValidator.git

	$ gem build xmlvalidator.gemspec
	$ gem install xmlvalidator-0.0.1.gem

In your config.rb file, you'll need to add something like this:

	require "lib/middleman-xmlvalidator"

	configure :build do
	    activate :validate_nokogiri
	end

Then simply call:

	$ middleman build



###License:
Copyright © 2013 Brian Anders
Dual licensed under the MIT and GPL licenses.