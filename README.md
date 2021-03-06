#Fantasy Sports Calculator
[![Code Climate](https://codeclimate.com/github/Brandon-Lyons/Fantasy-Sports-Calculator-Rails.png)](https://codeclimate.com/github/Brandon-Lyons/Fantasy-Sports-Calculator-Rails)[![Build Status](https://travis-ci.org/Brandon-Lyons/Fantasy-Sports-Calculator-Rails.png)](https://travis-ci.org/Brandon-Lyons/Fantasy-Sports-Calculator-Rails)

This is Ruby on Rails app for my final capstone project at the [Nashville Software School](http://nashvillesoftwareschool.com/). This app is the same as my previous CLI [project](https://github.com/Brandon-Lyons/Fantasy-Sports-Calculator) but it now has an interface and is expanding to include other fantasy sports.<br />
[fantasy-sports-calculator.herokuapp.com](http://fantasy-sports-calculator.herokuapp.com/)
##Features

1. Users can create an account and access their leagues
2. Users cannot access other users' leagues
3. Users can create multiple leagues for each sport
4. Each league can have its rules changed at creation
5. Each league can be edited after creation
6. Each league can be deleted
7. User can calculate the score a player received for all of their leagues by entering the player's name

##Usage

Be aware that this app uses postgresql so a server must be on.<br />
Once you clone this repo cd into the directory and run bundler<br />
`bundle`<br />
then create the database<br />
`rake db:create:all`<br />
run the migrations<br />
`rake db:migrate`<br />
migrate seed data<br />
`rake db:seed`<br />
then start the server<br />
`rails s`<br />
To run the tests:<br />
`rake`<br />


##Author

Brandon Lyons

##License

The MIT License (MIT)

Copyright (c) 2013 Brandon Lyons

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
