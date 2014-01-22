class RemoveEmailFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :Email, :string
  end
end
