

Stuff I collect about Lua and Moonscript:
======

Books
======

https://github.com/da99/lua\_lib/tree/master/bin

OpenResty
============
The best intros to OpenResty I could find:
* [Scripting Nginx w/Lua"](http://www.londonlua.org/scripting_nginx_with_lua/slides.html).
* [Definitely an OpenResty Guide](http://www.staticshin.com/programming/definitely-an-open-resty-guide/).

To install OpenResty:
[http://openresty.org/#Installation](http://openresty.org/#Installation)

Lua is not meant for me.
==============

Most of the people using Lua are C programmers who come from a different
world than regular humans.
Their idea of simplicity is far different than the retarded web monkeys
who are reading this site.
Nevertheless, Lua is a wonderful language.

```sh
"Wonderful" == "not as bad as other languages"
```
In other words: Lua is no better, no worse than Ruby, Python, and all the
others that are worse than

[Factor](http://factorcode.org) and [Smalltalk](http://www.pharo-project.org/)

Why Lua for the web?
=====================
I will not answer this. If you want to use some other language, fine. Go use it.
There is no compelling reason to use it if you are already happy with your current language(s).

I use it because: it's easy to compile/install, runs fast enough for me, and barely uses any memory.


Learning Lua is easy at first. Then it gets harder.
====

The book, Programming in Lua 3rd Edition (for 5.2), is already partially outdated.
It used a pre-release Lua 5.2 version.

[Here is an example](http://stackoverflow.com/a/11280629/841803).

You will have to rely on blogs, Google, and
[stackoverflow](http://stackoverflow.com/questions/tagged/lua).

I won't blame you if you run screaming back to easy-to-use Rack and Sinatra.



Lua the easy way.
================
I'm sticking with the LuaJIT 2.0 for now.
It is compatible with 5.1 and just as easy to install.
It is easy to compile. I uninstalled the Lua5.1 Ubuntu package,
wrote a [simple shell script](https://github.com/da99/boot_ups/blob/master/bin/install/luajit)
to compile/install [LuaJIT 2.0](http://luajit.org/install.html),
and put the LuaJIT bin dir in my $PATH.

Things are still being debated about Lua 5.2 and the future. Just look at this page:
[Sand Boxes](http://lua-users.org/wiki/SandBoxes).

It's full of warnings, complaints, and debates. My needs are simple (but with limited RAM/CPU).
Therefore, I will:
stick with LuaJIT, use it as 5.1, and use openresty. If you want to learn more
about it: use google.

Learning Lua
============
* "Programming in Lua, 5.2" (not online for free yet)
* [Lua 5.1 Manual](http://www.lua.org/manual/5.1/)
* [Lapis](http://leafo.net/lapis/).

Lua Commentary
===============
* [OOP-ish Lua](http://phrogz.net/Lua/)
* [PostgresSQL Basics by Example](http://darthdeus.github.io/blog/2013/08/19/postgresql-basics-by-example/)
* [Lua: Good, bad, and ugly parts](http://notebook.kulchenko.com/programming/lua-good-different-bad-and-ugly-parts)
* [Zerobrane Studio: IDE w/live coding](http://studio.zerobrane.com/)
* [NGINX Tutorials by Openresty co-creator](http://openresty.org/download/agentzh-nginx-tutorials-en.html)

More to come:
=================
     That's all for now.
     Send complaints, suggestions, and hate mail to:
     [Ghetto.lua][https://github.com/da99/lua_lib/issues]

What I'm up to:
===============
   I'm trying to find a well-maintained lib that does this:

```lua
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
```



