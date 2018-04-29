class AddUserIdToAttachements < ActiveRecord::Migration[5.1]
  def change
    add_column :resturants, :user_id, :integer
  end
end
