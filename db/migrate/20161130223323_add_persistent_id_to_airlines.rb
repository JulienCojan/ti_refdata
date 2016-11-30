class AddPersistentIdToAirlines < ActiveRecord::Migration
  def change
    add_column :airlines, :persistent_id, :string
  end
end
