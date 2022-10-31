class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
        t.string :name
        t.string :address
        t.integer :rating
        t.string :description
        t.timestamps
    end
  end
end