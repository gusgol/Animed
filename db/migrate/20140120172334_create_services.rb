class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :client_id
      t.integer :animal_id
      t.date :service_date
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
