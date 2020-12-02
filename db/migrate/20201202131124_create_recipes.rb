class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name, presence: true
      t.integer :category_id, presence: true
      t.string :explaination, presence: true
      t.text :detail1
      t.text :detail2
      t.text :detail3
      t.text :detail4
      t.text :detail5

      t.timestamps
    end
  end
end
