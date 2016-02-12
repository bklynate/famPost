class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category has been created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
<<<<<<< HEAD
    
=======
    @category = Category.find(params[:id])
>>>>>>> 7cc959391405710a55ecf9262c41fa4ca3d29d8e
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
