class AddUserRefToReceipes < ActiveRecord::Migration[7.0]
  def change
    add_column :receipes, :user_id, :integer, foreign_key: { table_name: :users }
  end
end
