class AddClientIdToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :client_id, :integer
  end
end
