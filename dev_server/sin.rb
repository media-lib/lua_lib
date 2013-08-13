require 'sinatra'

use Rack::Static, :urls => ["/css"], :root => "public"

get '/' do
  File.read("public/index.html")
end
