class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  include RecipesHelper
  # GET /recipes
  # GET /recipes.json

def tag_recipes
  # @tag = Tag.find(params[:cat_id])
  # @recipes = Recipe.all
  # @recipes_by_tag = []

  # @recipes.each do |recipe|
  #   if recipe.keyword == @tag.id
  #     @recipes_by_tag.push(recipe)
  #   end
  # end
  # puts @recipes_by_tag
  @tag = Tag.all
  @tags = Tag.find(params[:tag_id])
  @recipes = Recipe.all
  @rtag = RecipeTag.all
  @recipes_by_tag = []

  @rtag.each do |rtag|
    if rtag.tag_id == @tags.id
      recipe = Recipe.find(rtag.recipe_id)
      @recipes_by_tag.push(recipe)
    end
  end






end



  def index
    @recipes = Recipe.all
    @category = Category.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @categories = Category.all
  end

  # GET /recipes/1/edit
  def edit
    @categories = Category.all
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        @recipe = get_tagged(@recipe)
        @recipe.save

        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :category_id, :description, :ingredients, :directions, :image, :song, :keyword)
    end
end
