class AddSpeciesToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :species, :string
  end
end
