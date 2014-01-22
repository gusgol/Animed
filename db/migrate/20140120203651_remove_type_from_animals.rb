class RemoveTypeFromAnimals < ActiveRecord::Migration
  def change
    remove_column :animals, :type, :string
  end
end
