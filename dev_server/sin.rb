require 'sinatra'

use Rack::Static, :urls => ["/css"], :root => "./"

get '/' do
  File.read("index.html")
end
