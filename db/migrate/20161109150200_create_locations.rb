class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :city
      t.integer :state_id
      t.string :zipcode
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
