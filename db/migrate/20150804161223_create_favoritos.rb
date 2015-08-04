class CreateFavoritos < ActiveRecord::Migration
  def change
    create_table :favoritos do |t|

      t.timestamps null: false
    end
  end
end
