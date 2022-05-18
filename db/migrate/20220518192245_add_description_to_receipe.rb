class AddDescriptionToReceipe < ActiveRecord::Migration[7.0]
  def change
    add_column :receipes, :Description, :string
  end
end
