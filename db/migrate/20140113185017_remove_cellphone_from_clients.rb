class RemoveCellphoneFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :Cellphone, :string
  end
end
