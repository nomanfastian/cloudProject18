class AddAttachementToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :attachement, :avatar
  end
end
