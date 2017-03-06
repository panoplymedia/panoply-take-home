class CreatePodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :company

      t.timestamps
    end
  end
end
