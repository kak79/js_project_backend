class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    # using include allows us to show the ingredients that belong_to a given recipe
    render json: @recipes,
      include: [:ingredients]
  end

  # GET /recipes/1
  def show
    render json: @recipe,
    include: [:ingredients]
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
    if @recipe.update(recipe_params)
      render json: @recipe,
      include: [:ingredients]
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
      # including :ingredients => [] is part of being able to include ingredients in json
      params.require(:recipe).permit(:title, :instructions, :ingredients => [])
    end
end