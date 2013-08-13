require 'sinatra'

use Rack::Static, :urls => ["/favicon.ico", "/css", "/img"], :root => "./"

get '/' do
  File.read("index.html")
end
