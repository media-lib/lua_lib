

title "Hello WOrld"

main {

  h1 'Sinatra.lua'
  h2 'Sinatra takes a little break from the Ruby stage to sing a diddy under the Brazilian moon.'

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
