class AntiquesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]


  def index
    # @antiques = Antique.all
    @antiques = Antique.paginate(page: params[:page], per_page: 12)
  end

  def show
    @antique = set_antique
  end

  def new
    @antique = Antique.new
  end

  def create
    @antique = Antique.new(antique_params)
    if @antique.save
      redirect_to antique_path(@antique)
    else
      render :new
    end
  end

  def edit
    @antique = set_antique
  end

  def update
    @antique = set_antique
    @antique.update(antique_params)
    if @antique.save
      redirect_to antique_path(@antique)
    else
      render :edit
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
