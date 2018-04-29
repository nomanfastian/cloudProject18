class AddAttachmentAvatarToAttractions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :attractions do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :attractions, :avatar
  end
end
