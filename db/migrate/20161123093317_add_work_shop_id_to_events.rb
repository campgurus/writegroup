class AddWorkShopIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :work_shop_id, :integer
  end
end
