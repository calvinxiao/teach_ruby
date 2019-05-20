app = -> env { [200, {}, ["Hello Rack"]] }

class FirstMiddleware
    def initialize(app)
        @app = app
    end

    def before
        puts "before"
        @start = Time.now
        sleep 1
    end
    
    def after
        puts "after"
        duration = Time.now - @start
        @result[1]["Duration"] = (duration * 1000.0).to_i.to_s
        @result
    end

    def call(env)
        before 
        @result = @app.call(env)
        after
    end
end

use FirstMiddleware

run app
