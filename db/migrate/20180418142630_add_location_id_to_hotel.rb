class AddLocationIdToHotel < ActiveRecord::Migration[5.1]
  def change
    add_column :hotels, :location_id, :integer
  end
end
