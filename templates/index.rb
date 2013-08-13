

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

    h3 "Install sinatra-openresty:"
    p {
      span "Your guess is as good as mine. "
      span "("
      span.note "Seriously: "
      span "I'll post more about this later.)"
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

app:get("/drinks/:num", function(num)
  return "I ordered " .. tostring(num) .. " Mint Juleps."
end)

app:run()
eos
)
   h3 "Alternatives:"
   p {
     a("Lapis", :href=>"http://leafo.net/lapis/")
     span ": Another easy to use framework on OpenResty."
   }

   h3 "More to come:"
   p {
     span "That's all for now. "
     span "Send complaints, suggestions, and hate mail to: "
     a("sin-moon", :href=>"https://github.com/sin-moon/sin-moon.github.io/issues")
   }
}
