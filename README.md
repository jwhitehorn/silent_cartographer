# Overview #


A Sinatra based [MBTiles](https://github.com/mapbox/mbtiles-spec/) server.

## Getting Started ##

If you don't already have [RVM](https://rvm.io), install that first. Then:

* Download the latest build of Silent Cartographer from [here](https://github.com/jwhitehorn/silent_cartographer/zipball/master), or `git clone https://github.com/jwhitehorn/silent_cartographer.git`
* cd into silent_cartographer - RVM will prompt you, please read and agree.
* `ruby -v` should confirm that you are running Ruby 1.9.2, if not, something is wrong with RVM.
* Install gems `gem install bundler && bundle install`
* Copy your desired `.mbtiles` file to `map.mbtiles` in the root of the silent_cartographer directory

You are now done setting up the app. To launch it now, or any time in the future, simply `rackup`! You will be greeted with somthing similar to:

    >> Thin web server (v1.4.1 codename Chromeo)
    >> Maximum connections set to 1024
    >> Listening on 0.0.0.0:9292, CTRL+C to stop
    
In this case, you'd point your web browser to http://localhost:9292 to see your maps.

## License ##

Copyright (c) 2012, [Jason Whitehorn](https://github.com/jwhitehorn) 
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.