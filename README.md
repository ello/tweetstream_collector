# tweetstream_collector

A little Rails app to connect to Twitter and save off a stream of tweets you specify for later analysis

###  Getting started

1. Clone this repo
2. Go to https://apps.twitter.com/ and set up a new app
3. To run locally, copy `.env.example` to `.env` and sub in the values from your new Twitter app. Or, to run on Heroku, create a Heroku app and set those same variables with `heroku config:set`
4. Set up your database: `rake db:create db:schema:load`
5. Fire up the importer: `rake tweetstream:import`

