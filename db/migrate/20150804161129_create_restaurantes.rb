class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :codRestaurante
      t.string :nombreRestaurante
      t.integer :codCiudad

      t.timestamps null: false
    end
  end
end
