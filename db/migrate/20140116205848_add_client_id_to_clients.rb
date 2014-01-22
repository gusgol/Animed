class AddClientIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :client_id, :integer
  end
end
