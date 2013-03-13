# validate.rb

module MyFeature
    class << self
        def registered(app)
            app.after_build do |builder|
                puts "--After Build--",""
                Dir.glob("build/*.xml").each do |full_path|
                	puts "   Validating.....  " + full_path
                	
                end
                Dir.glob("build/*.rss").each do |full_path|
                	puts "   Validating.....  " + full_path
                	
                end
            end
        end
        alias :included :registered
    end
end

::Middleman::Extensions.register(:my_feature, MyFeature)