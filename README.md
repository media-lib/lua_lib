
Warning:
=======

This repo has neither the endorsement of the creators of [Sinatra.rb](http://www.sinatrarb.com)
nor the creator of Sinatra.lua.

Sin\_Moon
========

The unofficial intro site for: [Sinatra.lua](https://github.com/jtarchie/sinatra-openresty)

Install
=======

You must have Ruby 1.9/2.0 and Bundler installed.

    git clone https://github.com/da99/sin_moon
    cd sin_moon
    bin/install
    bin/compile
    bundle exec ruby dev_server/sin.rb

    # Go to: http://localhost:4567/


Adding Content
==============

Add an Erector partial in ./templates.
Then: `bin/compile`
