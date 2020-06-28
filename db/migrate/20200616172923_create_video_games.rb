class CreateVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :genre
      t.date :initial_release_date
      t.integer :rating
      t.boolean :kid_friendly

      t.timestamps
    end
  end
end
