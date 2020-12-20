class RecipesController < ApplicationController
  def index
   @recipe1 = Recipe.where(category_id:2) 
   @recipe2 = Recipe.where(category_id:3) 
   @recipe3 = Recipe.where(category_id:4) 
   @recipe4 = Recipe.where(category_id:5)
   @recipe5 = Recipe.where(category_id:6)
  end

  def new
   @recipe = Recipe.new
   if user_signed_in?
    render "new"
   else
    flash[:notice]= "You need to sign in or "
    flash[:alert] = "sign up before continuing"
    redirect_to new_user_session_path
   end 
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
       redirect_to root_path
    else
       render "new"
    end  
  end

  def show

  end



  private
   def recipe_params
    params.require(:recipe).permit(:name, :category_id, :explaination, :detail1, :detail2, :detail3, :detail4, :detail5, :ing_name1,:ing_quantity1,:ing_calorie1, :ing_name2,:ing_quantity2,:ing_calorie2,:ing_name3,:ing_quantity3,:ing_calorie3,:ing_name4,:ing_quantity4,:ing_calorie4,:ing_name5,:ing_quantity5,:ing_calorie5,images: []).merge(user_id: current_user.id)
   end


end
