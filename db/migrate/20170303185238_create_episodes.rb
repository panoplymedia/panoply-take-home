class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.datetime :release_time
      t.integer :category
      t.integer :podcast_id
      t.string :audio_url
      t.integer :ad_position

      t.timestamps
    end
  end
end
