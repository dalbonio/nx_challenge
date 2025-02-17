class CreateClients < ActiveRecord::Migration[6.1]
  def change
      create_table :clients do |t|
      
      t.string :name
      t.string :email
      t.string :phone
      t.string :cpf, index: { unique: true, name: 'unique_cpfs' }

      t.timestamps
    end
  end
end
