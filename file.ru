app = -> env { [200, {}, ["Hello Rack"]] }

module Rack
    class FileMiddleware
        def initialize(app, file=nil)
            @app = app
            @file = file
        end

        def call(env)
            if env[PATH_INFO] == '/file' 
                content = ::File.open("./#{@file}", "r")
                return [200, {}, content]
            end
            
            return @app.call env
        end
    end
end

use Rack::FileMiddleware, 'file.ru'

run app
