class Application
    def call(env)
        resp = Rack::Response.new

        current_time = Time.now.strftime("%H:%M:%S")

        # resp.write current_time
        if current_time[0..1].to_i < 12
        resp.write "Morning"
        else
        resp.write "Afternoon"
        end
        resp.finish
    end

    
    
end