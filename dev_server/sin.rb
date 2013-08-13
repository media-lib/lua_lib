require 'sinatra'

use Rack::Static, :urls => ["/css", "/img"], :root => "./"

get '/' do
  File.read("index.html")
end
