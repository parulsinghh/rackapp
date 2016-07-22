# Basic Rack app
require 'rack'

Hello = Proc.new do |env|
  res = Rack::Response.new
  req = Rack::Request.new(env)
  params = req.params

  [
    '200', 
    {'Content-Type' => 'text/html'}, 
    ["Hello #{params['name'] ? params['name'] : 'No name'}"]
  ]
end

Rack::Handler::WEBrick.run Hello

