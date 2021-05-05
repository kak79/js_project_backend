class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    # using include allows us to show the ingredients that belong_to a given recipe
    render json: @recipes,
      include: [:ingredients], except: [:created_at, :updated_at]
  end

  # GET /recipes/1
  def show
    render json: @recipe,
    include: [:ingredients], except: [:created_at, :updated_at]  
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)
    
    if @recipe.save
      render json: @recipe, include: [:ingredients], status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    # binding.pry
    # find recipe id in db and save to var
    recID = Recipe.find(params[:id].to_i)
    # access ingredients through recipe id variable
    @ingredient = Ingredient.create(name: params[:ingredients_attributes][:name])
    @ingredient.measurement = params[:ingredients_attributes][:measurement]
    @ingredient.save
    recID.ingredients
    recID.ingredients << @ingredient
    # << ingredient into ingredients [] 
    # save recipe.id.ingredients
    # if true everything after if line will work
    if recID.save
      render json: recID,
      include: [:ingredients], except: [:created_at, :updated_at]  
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      
      params.require(:recipe).permit(:id, :title, :instructions, :ingredients_attributes => [])
    end
end