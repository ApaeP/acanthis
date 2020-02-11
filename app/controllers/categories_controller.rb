class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(set_category_params)
    @category.save
  end

  def update
    @category = set_category
    @category.update(set_category_params)
  end

  private

  def set_category_params
        params.require(:category).permit(:name)
  end

  def set_category
    @antique = Antique.find(params[:id])
  end
end
