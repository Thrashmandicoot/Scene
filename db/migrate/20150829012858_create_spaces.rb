class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :img
      t.string :title
      t.text :description
      t.references :organization, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
