class CreateLeaders < ActiveRecord::Migration[5.0]
  def change
    create_table :leaders do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :bio

      t.timestamps
    end
  end
end
