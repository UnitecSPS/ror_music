class SingersController < ApplicationController
  def index
    @singers = Singer.order(:name)
  end

  def new
    @singer = Singer.new
  end

  def create
    @singer = Singer.new(params[:singer])

    if @singer.save
      redirect_to singers_path
    else
      render :new
    end
  end

  def edit
    @singer = Singer.find(params[:id])
  end

  def update
    @singer = Singer.find(params[:id])

    if @singer.update_attributes(params[:singer])
      redirect_to singers_path
    else
      render :edit
    end
  end

  def destroy
    @singer = Singer.find(params[:id])

    if @singer.destroy
      redirect_to singers_path
    else
      render :edit
    end
  end

  def show
    @singer = Singer.find(params[:id])
  end

  def catalogue
    @singer = Singer.find(params[:id])
    @albums = @singer.albums
  end
end
