class CategoriesController < ApplicationController
  # before_destroy :destroy_antiques

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(set_category_params)
    if @category.save
      respond_to do |format|
        format.html { redirect_to antiques_path(category: @category) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to antiques_path(category: @category) }
        format.js
      end
    end
  end

  def update
    @category = set_category
    @category.update(set_category_params)
  end

  def destroy
    @category = set_category
    destroy_antiques(@category)
    @category.destroy
    redirect_to root_path
  end

  private

  def set_category_params
    params.require(:category).permit(:title)
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def destroy_antiques(cat)
    cat.antiques.destroy_all
  end
end



