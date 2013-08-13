

title "Ghetto.lua"

main {

  h1 'Ghetto.lua'
  h2 'Your guess is as good as mine as to what this site is about.'

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
}



