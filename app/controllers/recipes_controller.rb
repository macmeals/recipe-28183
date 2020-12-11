class RecipesController < ApplicationController
  def index
    
  end

  def new
   @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
    Ingredient.create(ingredient_params(recipe))
  end

  private
   def recipe_params
    params.require(:recipe).permit(:name, :category_id, :explaination, :detail1, :detail2, :detail3, :detail4, :detail5).merge(user_id: current_user.id)
   end

   def ingredient_params(recipe)
    params.require(:ingredient).permit(:name1, :quantity1, :calorie1, :name2, :quantity2, :calorie2 ,:name3, :quantity3, :calorie3,:name4, :quantity4, :calorie4, :name5, :quantity5, :calorie5 ).merge(recipe_id: recipe.id)
   end

end
