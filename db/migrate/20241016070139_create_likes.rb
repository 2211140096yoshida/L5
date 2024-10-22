class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:likes)
      create_table :likes do |t|
        t.integer :user_id
        t.integer :tweet_id

        t.timestamps
      end
    end
  end
end
