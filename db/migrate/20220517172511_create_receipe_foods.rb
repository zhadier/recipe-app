class CreateReceipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :receipe_foods do |t|
      t.integer :Quantity

      t.timestamps
    end
  end
end
