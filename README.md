# Middleman::Xmlvalidator

TODO: Write a gem description

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
