class CreateWorkShops < ActiveRecord::Migration[5.0]
  def change
    create_table :work_shops do |t|
      t.string :name
      t.text :description
      t.integer :location_id
      t.boolean :drop_in
      t.integer :leader_id

      t.timestamps
    end
  end
end
