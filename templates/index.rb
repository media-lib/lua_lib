

title "Hello WOrld"

main {

  h1 'Sinatra.lua'
  h2 'Sinatra takes a little break from the Ruby stage to sing a diddy under the Brazilian moon.'

  p {
    span.note "Note:"
    span "
      This site is unofficial and has no association
      with
    "
    a("Sinatra.rb", :href=>"http://www.sinatrarb.com")
    span " or "
    a("Sinatra-Openresty", :href=>"https://github.com/jtarchie/sinatra-openresty")
  }

  div.install {
    h3 "Install Lua:"
    p "On Ubuntu:"
    highlight "sh", "sudo apt-get install lua5.1"

    h3 "Install OpenResty:"
    p {
      span "Go to: "
      a("http://openresty.org/#Installation", :href=>"http://openresty.org/#Installation")
    }

  }

  h3 "Hello, crooner."
  highlight('lua',  <<-eos
local sinatra = require('sinatra');

local app = sinatra.app:new()

app:get("/", function()
  return "Hello, World"
end)

app:get("/:name", function()
  return "Hello, " .. params.name;
end)

app:get("/age/:age", function(age)
  return "You are " .. tostring(age) .. " years old."
end)

app:run()
eos
)
}
