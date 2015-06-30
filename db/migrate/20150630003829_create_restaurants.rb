class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :website
      t.integer :phone
      t.integer :rating
      t.text :description
      t.string :cuisine

      t.timestamps null: false
    end
  end
end
