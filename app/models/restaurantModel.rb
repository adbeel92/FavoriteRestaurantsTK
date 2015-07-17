
class FavRestaurant < ActiveRecord::Migration
  def change
    create_table :favoritos do |t|
      t.string   "name",       limit: 255
      t.string   "category",   limit: 255
      t.datetime "created_at",             null: true
    end
  end
  def initialize(name, category)  
    # Instance variables  
    @name = name  
    @category = category  
  end  
end  


