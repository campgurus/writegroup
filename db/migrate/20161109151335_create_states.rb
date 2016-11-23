class CreateStates < ActiveRecord::Migration[5.0]
  def change
    if table_exists?(:states)
      drop_table :states
    end

    create_table :states do |t|
      t.string :name
      t.string :iso
      t.string :ansi_code

      t.timestamps
    end
  end
end
