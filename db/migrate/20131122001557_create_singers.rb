class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name
      t.string :country
      t.string :twitter

      t.timestamps
    end
  end
end
