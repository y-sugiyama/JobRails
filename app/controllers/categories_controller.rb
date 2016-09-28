class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)


      if @category.save
         redirect_to categories_path, notice: 'Category was successfully created.' 
      else
        render :new  
      end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
      if @category.update(category_params)
       redirect_to categories_path, notice: 'Category was successfully updated.'
      else
         render :edit 
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
     redirect_to categories_path, notice: 'Category was successfully destroyed.'
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
