class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
      t.string :genre
      t.references :singer

      t.timestamps
    end
    add_index :albums, :singer_id
  end
end
