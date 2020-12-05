class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id ,presence: true
      t.string :name1
      t.integer :quantity1 
      t.integer :calorie1
      t.string :name2
      t.integer :quantity2 
      t.integer :calorie2
      t.string :name3
      t.integer :quantity3 
      t.integer :calorie3
      t.string :name4
      t.integer :quantity4 
      t.integer :calorie4
      t.string :name5
      t.integer :quantity5 
      t.integer :calorie5
      t.timestamps 

      
    end
  end
end
