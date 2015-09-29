class AddAttachmentImageToSpaces < ActiveRecord::Migration
  def self.up
    change_table :spaces do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :spaces, :image
  end
end
