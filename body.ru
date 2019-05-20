app = -> env {
    if env['rack.input']
        body = env['rack.input'].read
        p body
    end
    [200, {}, ["Hello Rack"]] 
}
run app
