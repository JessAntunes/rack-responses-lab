class Application
    def call(env)
        resp = Rack::Response.new
        t = Time.now
        if t.hour > 12 && t.hour >= 0
            resp.write /Afternoon/i
        else
            resp.write /Morning/i
        end
        resp.finish
    end
end