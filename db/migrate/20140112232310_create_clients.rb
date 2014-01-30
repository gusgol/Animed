class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :cep
      t.string :telephone
      t.string :cellphone
      t.string :email
      t.date :birthdate
      t.string :cpf

      t.timestamps
    end
  end
end
