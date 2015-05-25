TweetStream.configure do |config|
  config.consumer_key       = ENV.fetch('TWITTER_CONSUMER_KEY')
  config.consumer_secret    = ENV.fetch('TWITTER_CONSUMER_SECRET')
  config.oauth_token        = ENV.fetch('TWITTER_OAUTH_TOKEN')
  config.oauth_token_secret = ENV.fetch('TWITTER_OAUTH_TOKEN_SECRET')
  config.auth_method        = :oauth
end
