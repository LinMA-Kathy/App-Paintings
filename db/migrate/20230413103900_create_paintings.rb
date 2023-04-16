class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.integer :year

      t.timestamps
    end
  end
end
