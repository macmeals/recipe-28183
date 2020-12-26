class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name, presence: true
      t.string :explaination, presence: true
      t.integer :category_id, presence: true
      t.string :ing_name1
      t.string :ing_quantity1 
      t.integer :ing_calorie1
      t.string :ing_name2
      t.string :ing_quantity2 
      t.integer :ing_calorie2
      t.string :ing_name3
      t.string :ing_quantity3 
      t.integer :ing_calorie3
      t.string :ing_name4
      t.string :ing_quantity4 
      t.integer :ing_calorie4
      t.string :ing_name5
      t.string :ing_quantity5 
      t.integer :ing_calorie5
      t.text :detail1
      t.text :detail2
      t.text :detail3
      t.text :detail4
      t.text :detail5
      t.integer :user_id
      t.timestamps
    end
  end
end
