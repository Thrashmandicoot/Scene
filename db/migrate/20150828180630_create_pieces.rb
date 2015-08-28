class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :img
      t.string :title
      t.text :description
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
