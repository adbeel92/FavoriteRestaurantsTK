class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :idUsuario
      t.string :clave
      t.string :email

      t.timestamps null: false
    end
  end
end
