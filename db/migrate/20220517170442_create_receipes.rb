class CreateReceipes < ActiveRecord::Migration[7.0]
  def change
    create_table :receipes do |t|
      t.string :Name
      t.string :PreparationTime
      t.string :CookingTime
      t.boolean :Public

      t.timestamps
    end
  end
end
