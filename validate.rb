# validate.rb

module MyFeature
    class << self
        def registered(app)
            app.after_build do |builder|
                puts "--After Build--"
            end
        end
        alias :included :registered
    end
end

::Middleman::Extensions.register(:my_feature, MyFeature)