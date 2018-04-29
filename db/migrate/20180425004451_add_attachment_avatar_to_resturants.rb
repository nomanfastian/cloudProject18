class AddAttachmentAvatarToResturants < ActiveRecord::Migration[5.1]
  def self.up
    change_table :resturants do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :resturants, :avatar
  end
end
