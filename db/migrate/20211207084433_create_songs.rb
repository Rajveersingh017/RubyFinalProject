class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :genre
      t.decimal :length
      t.decimal :rating
      t.integer :instock
      t.decimal :price
      t.references :store, null: false, foreign_key: true
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
