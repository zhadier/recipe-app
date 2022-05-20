class CreateFoodIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :food_ingredients do |t|
      t.integer :Quantity

      t.timestamps
    end
  end
end
