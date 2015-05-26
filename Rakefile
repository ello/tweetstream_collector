# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :tweetstream do
  task :import => :environment do
    TweetStream::Client.new.track('#ello', '@elloworld', 'ello.co') do |t|
      CollectedTweet.where(uri: t.uri).first_or_initialize.tap do |ct|
        ct.assign_attributes(created_at: t.created_at,
                             body: t.full_text,
                             source: t.source,
                             lang: t.lang,
                             uri: t.uri.to_s)
        ct.save!
      end
    end
  end
end
