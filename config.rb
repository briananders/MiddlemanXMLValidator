##config.rb

require "lib/middleman-xmlvalidator"

configure :build do

    activate :validate_nokogiri
    
end