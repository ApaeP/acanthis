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
    # @new_antique = Antique.new
    # @new_image = @new_antique.images.build
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
    respond_to do |format|
      format.js { render js: "window.location = '#{category_antiques_path(@category)}'" }
      format.html { redirect_to category_antiques_path(@category) }
    end
  end

  def modal
    @category = Category.find_by(title: params[:category])
    if params[:nav]
      antiques = Antique.where(category: @category).order(created_at: 'DESC')
      @current_antique = Antique.find(params[:antique])
      @antique = ((params[:nav] == 'next') ? next_element(@current_antique, antiques) : previous_element(@current_antique, antiques))
    else
      @antique = Antique.find(params[:id])
    end
    respond_to do |format|
      format.js
    end
  end

  private

  def next_element(element, array)
    return array.first if element == array.last
    array[(array.find_index(element) + 1)]
  end

  def previous_element(element, array)
    return array.last if element == array.first
    array[(array.find_index(element) - 1)]
  end

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
