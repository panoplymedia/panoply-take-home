class CreateAdvertisements < ActiveRecord::Migration[5.0]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.text :categories
      t.integer :downloads
      t.integer :position

      t.timestamps
    end
  end
end
