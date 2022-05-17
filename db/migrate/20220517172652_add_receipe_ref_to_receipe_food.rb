class AddReceipeRefToReceipeFood < ActiveRecord::Migration[7.0]
  def change
    add_column :receipe_foods, :receipe_id, :integer, null: false, foreign_key: { table_name: :receipes }
  end
end
