

title "Ghetto.lua"

main {

  h1 'Ghetto.lua'
  h2 'Your guess is as good as mine as to what this site is about.'

  div.learn {

    h3 "Intro to OpenResty:"
    p {
      span "The best intro to OpenResty I could find: "
      a("Scripting Nginx w/Lua", :href=>"http://www.londonlua.org/scripting_nginx_with_lua/slides.html")
    }
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

   h3 "More to come:"
   p {
     span "That's all for now. "
     span "Send complaints, suggestions, and hate mail to: "
     a("Ghetto.lua", :href=>"https://github.com/ghetto-lua/ghetto-lua.github.io/issues")
   }


   h3 "What I'm up to:"
   p "I'm trying to find a well-maintained lib that does this: "
   highlight "lua", <<-eos
require 'rack.lua'

USE(function (req, resp)
  if req.header["INVALID-HeAder"] then
    resp.status  = 406
    return "Header not allowed: INVALID-HeAder"
  end
end)

GET('/hello/sammy', function ()
  return "Hello World!"
end)
   eos
}



