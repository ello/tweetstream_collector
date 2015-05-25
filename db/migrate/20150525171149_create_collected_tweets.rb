class CreateCollectedTweets < ActiveRecord::Migration
  def change
    create_table :collected_tweets do |t|
      t.text :body, null: false
      t.string :source, null: false
      t.string :lang, null: false
      t.string :uri, null: false
      t.timestamps null: false
    end
  end
end
