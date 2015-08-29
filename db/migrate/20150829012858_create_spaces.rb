class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :img
      t.string :title
      t.text :guidelines
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
