class AddArtistToPaintings < ActiveRecord::Migration[7.0]
  def change
    add_reference :paintings, :artist, null: false, foreign_key: true
  end
end
