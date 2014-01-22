class RemoveClientIdFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :client_id, :integer
  end
end
