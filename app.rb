require 'rack'
require 'json'

class Hello
  def self.call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)
    params = req.params

    res["Content-Type"] = "text/html"
    res.write("Hello #{params['name'] ? params['name'] : 'No name'}")

    res.finish
  end
end

Rack::Handler::WEBrick.run Hello

