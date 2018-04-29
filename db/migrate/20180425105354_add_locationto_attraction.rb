class AddLocationtoAttraction < ActiveRecord::Migration[5.1]
  def change
  	add_column :attractions, :location_id, :integer
  end
end
