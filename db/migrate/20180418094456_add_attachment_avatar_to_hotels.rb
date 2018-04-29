class AddAttachmentAvatarToHotels < ActiveRecord::Migration[5.1]
  def self.up
    change_table :hotels do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :hotels, :avatar
  end
end
