class AntiquesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def new
    set_category
    @antique = Antique.new
  end

  def edit
    set_category
    set_antique
  end

  def index
    set_category
    per_page = 24 # params[:per_page].to_i.zero? ? 24 : params[:per_page].to_i
    @antiques = @category.antiques.order("created_at DESC")
    @antiquespaginate = Antique.where(category_id: params[:category]).order("created_at DESC").paginate(page: params[:page], per_page: per_page)
    @new_antique = Antique.new
    @new_image = @new_antique.images.build
  end

  def create
    set_category
    @antique = Antique.new(antique_params)
    @antique.category = @category
    if @antique.save
      if params[:images]
        params[:images].each do |image|
          @antique.images.create(image: image)
        end
      end
      respond_to do |format|
        format.html { redirect_to category_antiques_path(@category) }
        # format.js
      end
    else
      render :new
      # respond_to do |format|
      #   format.html { redirect_to category_antiques_path(@category) }
      #   # format.js { render :new}
      # end
    end
  end

  def update
    set_category
    set_antique
    @antique.update(antique_params)
    # @category = @antique.category
    if @antique.save
      if params[:images]
        params[:images].each do |image|
          @antique.images.create(image: image)
        end
      end
      respond_to do |format|
        format.html { redirect_to category_antiques_path(@category, anchor: @antique) }
        # format.html { redirect_to category_antiques_path(@category) }
        # format.js { render js: "window.location = '#{category_antiques_path(@category)}'" }
      end
    else
      respond_to do |format|
        format.html { redirect_to edit_category_antique_path(@category, @antique) }
        # format.html { redirect_to category_antiques_path(@category) }
        format.js
      end
    end
  end

  def destroy
    set_antique
    @category = @antique.category
    @antique.destroy!
    # redirect_to category_antiques_path(@category), status: 303
    respond_to do |format|
      format.js { render js: "window.location = '#{category_antiques_path(@category)}'" }

      format.html { redirect_to category_antiques_path(@category) }
      # format.json { head :no_content }
    end
  end

  private

  def set_antique
    @antique = Antique.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def antique_params
    params.require(:antique).permit(
      :title,
      :description,
      :category_id,
      :photo,
      :name,
      :image,
      {images_attributes: [
        :id,
        :antique_id,
        :image
      ]}
    )
  end
end
