class AntiquesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    @contact = Contact.new
    per_page = params[:per_page].to_i.zero? ? 12 : params[:per_page].to_i
    @antiques = Antique.order("created_at DESC").all
    @antiquespaginate = Antique.order("created_at DESC").paginate(page: params[:page], per_page: per_page)
    @antique = Antique.new
  end

  def create
    @antique = Antique.new(antique_params)
    if @antique.save
      respond_to do |format|
        format.html { redirect_to antiques_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to antiques_path }
        format.js
      end
    end
  end

  def update
    @antique = set_antique
    @antique.update(antique_params)
    if @antique.save
      respond_to do |format|
        format.html { redirect_to antiques_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to antiques_path }
        format.js
      end
    end
  end

  def destroy
    @antique = set_antique
    @antique.destroy
    redirect_to antiques_path
  end

  private

  def set_antique
    @antique = Antique.find(params[:id])
  end

  def antique_params
    params.require(:antique).permit(:title, :description, :photo)
  end
end
