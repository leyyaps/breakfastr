class PastriesController < ApplicationController
  def index
  	@pastries = Pastry.all
  end

  def show
  	@pastry = Pastry.find(params[:id])
  	
  end

  def new
    @pastry = Pastry.new
  end

  def create
    @pastry = Pastry.new(pastry_params)
    if @pastry.save
        flash[:success] = "Pastry added!"
        redirect_to root_path
      else
        flash[:error] = "oops there is something wrong with your recipe there"
        render :new
      end
  end

  def edit
    @pastry = Pastry.find(params[:id])
  end

  def update
    @pastry = Pastry.find(params[:id])
    if @pastry.update(pastry_params)
      flash[:success] = "Pastry has been successfully updated"
      redirect_to pastry_path(@pastry)
    else
      flash[:error] = "Oops, you fucked up"
      render = :edit
    end
  end

  def destroy
    pastry = Pastry.find(params[:id])
    pastry.destroy
    flash[:success] = "You destroyed a perfectly good pastry"
    redirect_to root_path
  end

  private
  def pastry_params
      params.require(:pastry).permit(:name, :price_in_pence, :description)
  end

end


