class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :bio
      t.string :avatar
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :email
      t.string :password_digest
      t.string :twitter
      t.string :facebook
      t.string :website

      t.timestamps null: false
    end
  end
end
