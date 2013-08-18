

title "Ghetto.lua"

main {

  h1 'Ghetto.lua'
  h2 'My way of running a simple Lua-backed website for fun.'

  div.learn {
    h3 "Lua is not meant for me."
    p {
      span %^
        Most of the people using Lua are C programmers who come from a different
        world than regular humans.
        Their idea of simplicity is far different than the retarded web monkeys
        who are reading this site.
        Nevertheless, Lua is a wonderful language.^

      highlight "sh", '("Wonderful" == "not as bad as other languages")'

      span %^
        In other words: Lua is no better, no worse than Ruby, Python, and all the
        others that are worse than
      ^

      a("Factor", :href=>'http://factorcode.org')
      span ' and '
      a("Smalltalk", :href=>"http://www.pharo-project.org/")
    }
  }

  div.learn {
    h3 "Why Lua for the web?"
    p {
      span %^
        I will not answer this. If you want to use some other language, fine. Go use it.
        There is no compelling reason to use it if you are already happy with your current language(s).
        I use it because: easy to compile/install, runs fast enough for me, barely uses any memory.
      ^
    }
  }

  div.learn {
    h3 "Learning Lua is easy at first. Then it gets harder."
    p {
      span %^
        The book, Programming in Lua 2nd Edition (for 5.2), is already partially outdated.
        It used a pre-release version.
      ^
      a("Here is an example.", :href=>"http://stackoverflow.com/a/11280629/841803")
      span %^
        You will have to rely on blogs, Google, and ^
      a('stackoverflow', :href=>"http://stackoverflow.com/questions/tagged/lua")
      span '.'
      span %^
        I won't blame you if you run screaming back to easy-to-use Rack and Sinatra.
      ^
    }
  }

  div.learn {
    h3 "Lua the easy way."
    p {
      span %^
        I'm sticking with the LuaJIT 2.0 for now.
        It is compatible with 5.1 and just as easy to install.
        It is easy to compile. I uninstalled the Lua5.1 Ubuntu package,
        wrote a
      ^
      a("simple shell script", :href=>"https://github.com/da99/boot_ups/blob/master/bin/install/luajit")
      span %^
        to compile/install 
      ^
      a('LuaJIT 2.0', :href=>"http://luajit.org/install.html")
      span %^,
        and put the LuaJIT bin dir in my $PATH.
      ^
    }

    p {
      span %^
        Things are still being debated about Lua 5.2 and the future. Just look at this page:
      ^
      a("Sand Boxes", :href=>"http://lua-users.org/wiki/SandBoxes")
      span %^
        It's full of warnings, complaints, and debates. My needs are simple (but with limited RAM/CPU).
        Therefore, I will:
        stick with LuaJIT, use it as 5.1, and use openresty. If you want to learn more
        about it: use google.
      ^
    }
  }

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



