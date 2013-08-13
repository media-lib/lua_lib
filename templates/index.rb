

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
    span ", "
    a("Sinatra-Openresty", :href=>"https://github.com/jtarchie/sinatra-openresty")
    span " or "
    a("Lapis", :href=>"http://leafo.net/lapis/")
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

   h3 "Install ..."
   p {
     span "I was going to say, "
     a("Sinatra-Openresty", :href=>"https://github.com/jtarchie/sinatra-openresty")
     span ".
     However, it's currently a side-project and the owner does not want too much
     attention for now. Therefore, apologies to Mr. JT Archie.
     Until I find some other project to write about and play with, try using "
     a("Lapis", :href=>"http://leafo.net/lapis/")
     span ": another easy-to-use framework on OpenResty."
   }

  }


   h3 "More to come:"
   p {
     span "That's all for now. "
     span "Send complaints, suggestions, and hate mail to: "
     a("sin-moon", :href=>"https://github.com/sin-moon/sin-moon.github.io/issues")
   }
}
