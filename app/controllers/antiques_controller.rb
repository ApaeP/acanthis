class AntiquesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    # @contact = Contact.new
    per_page = 24 # params[:per_page].to_i.zero? ? 24 : params[:per_page].to_i
    @antiques = Antique.where(category_id: params[:category]).order("created_at DESC").all
    @antiquespaginate = Antique.where(category_id: params[:category]).order("created_at DESC").paginate(page: params[:page], per_page: per_page)
    @antique = Antique.new
    @category = Category.where(id: params[:category])
  end

  def create
    @antique = Antique.new(antique_params)
    @category = @antique.category
    if @antique.save
      respond_to do |format|
        format.html { redirect_to antiques_path(category: @category.id) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to antiques_path(category: @category.id) }
        format.js
      end
    end
  end

  def update
    @antique = set_antique
    @antique.update(antique_params)
    @category = @antique.category
    if @antique.save
      respond_to do |format|
        format.html { redirect_to antiques_path(category: @category.id) }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to antiques_path(category: @category.id) }
        format.js
      end
    end
  end

  def destroy
    @antique = set_antique
    @category = @antique.category
    @antique.destroy
    redirect_to antiques_path(category: @category.id)
  end

  private

  def set_antique
    @antique = Antique.find(params[:id])
  end

  def antique_params
    params.require(:antique).permit(:title, :description, :photo, :category_id)
  end
end
