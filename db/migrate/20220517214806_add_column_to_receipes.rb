class AddColumnToReceipes < ActiveRecord::Migration[7.0]
  def change
    add_column :receipes, :total_food_items, :integer, default: 0
    add_column :receipes, :total_price, :integer, default: 0
  end
end
