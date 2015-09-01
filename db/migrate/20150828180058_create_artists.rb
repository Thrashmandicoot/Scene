class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :avatar
      t.text :bio
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :facebook
      t.string :twitter
      t.string :website

      t.timestamps null: false
    end
  end
end
