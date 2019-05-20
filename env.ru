app = -> env { 
    p env
    [200, {}, ["Hello Rack"]]
}
run app
