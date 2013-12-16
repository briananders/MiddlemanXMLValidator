# Middleman::Xmlvalidator

This gem is used with middleman to validate the RSS and XML files that are generated in the build folder. The gem uses NokoGiri and some different XML schemas to validate the files in question. Dig into the code to see how it works. It's pretty straight forward.

## Installation

Add this line to your application's Gemfile:

    gem 'middleman-xmlvalidator', '>= 0.1.0'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install middleman-xmlvalidator

## Usage

inside your config.rb file, add something like this:

		configure :build do

		  activate :validate

		end

When you call

		$ middleman build

your .xml and .rss files will be validated against standard schema.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
