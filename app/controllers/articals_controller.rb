class ArticalsController < ApplicationController
  before_action :find_artical, only: [:edit,:update,:show,:destroy]

  def index
    @articals=Artical.all
  end
  
  def new
    @artical=Artical.new
  end

  def create
    @artical=Artical.new(artical_params)
    puts @artical.errors.any?
    if @artical.save
      flash[:notice] = "Artical was successfully saved"
      redirect_to artical_path(@artical)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def destroy
    redirect_to articals_path
  end

  def update
    if @artical.update(artical_params)
      flash[:notice] = "Artical was successfully updated"
      redirect_to artical_path(@artical)
    else
      render 'edit'
    end
  end

  private
  def artical_params
    params.require(:artical).permit(:title, :description)
  end

  def find_artical
    @artical = Artical.find(params[:id])
  end

end