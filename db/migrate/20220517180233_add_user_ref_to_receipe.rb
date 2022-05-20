class AddUserRefToReceipe < ActiveRecord::Migration[7.0]
  def change
    add_reference :receipes, :user, null: false, foreign_key: true
  end
end
