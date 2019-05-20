app = -> env { [200, {}, ["Hello Rack"]] }
run app
