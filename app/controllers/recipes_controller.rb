class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  def index
    recipes = Recipe.all

    render json: recipes,
      include: [:ingredients], except: [:created_at, :updated_at]
  end

  def show
    render json: @recipe,
    include: [:ingredients], except: [:created_at, :updated_at]  
  end

  def create
    recipe = Recipe.new(recipe_params)
    
    if recipe.save
      render json: recipe, include: [:ingredients], status: :created, location: recipe
    else
      render json: recipe.errors, status: :unprocessable_entity
    end
  end

  def update
    recID = Recipe.find(params[:id].to_i)
    @ingredient = Ingredient.create(name: params[:ingredients_attributes][:name])
    @ingredient.measurement = params[:ingredients_attributes][:measurement]
    @ingredient.save
    recID.ingredients
    recID.ingredients << @ingredient
    if recID.save
      render json: recID,
      include: [:ingredients], except: [:created_at, :updated_at]  
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe.destroy
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      
      params.require(:recipe).permit(:id, :title, :instructions, :ingredients_attributes => [])
    end
end