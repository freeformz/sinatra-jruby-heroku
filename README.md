Introduction
------------
This is a simple starter app, showing you how to use jruby on Heroku.

Feel free to fork/copy this sample app and use it as a base.

Local development
------------------

Tools you'll need:

  * Ruby 1.9.2 (rvm use 1.9.2)
  * Maven (brew install maven)
  * foreman (gem install froeman)


Getting Started Locally
-----------------------
 * rvm use 1.9.2
 * brew install maven
 * gem install foreman
 * git clone https://github.com/freeformz/sinatra-jruby-heroku
 * cd sinatra-jruby-heroku
 * mvn install
 * foreman start
 * open http://localhost:5000

You should see "Hello World" in your browser.

Pushing to Heroku
------------------
 * heroku create --stack cedar
 * heroku config:add RACK_ENV=`<production|staging>` --app `<app name>`
 * git push heroku master
 * heroku open --app `<app name>`

You should see "Hello World" in your browser.

How does it work?
-----------------

Heroku detects the pom.xml file and selects Java as the application's
langauge. A `mvn install` is run as part of the Heroku slug
compliation. Two tasks in `pom.xml` (install-bundler and bundle-install)
handle setting up the Ruby side of the application.

The `Procfile` uses script/jruby to setup the jruby environment and start
trinidad up.

Working with things
-------------------

Basically use `script/jruby` in place of the jruby command.

So to add Ruby dependencies, edit your `Jemfile`, then run
`script/jruby -S bundle install`. Or any of your other "favorite"
bundler commands.

To add Java deps, modify the `pom.xml` file and re-run `mvn install`.


Thanks
-------
Many thanks to Soliah (https://github.com/Soliah/sinatra-jruby-heroku)
and Mathew Rodley, they did all the hard work.

