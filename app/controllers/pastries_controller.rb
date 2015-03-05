class PastriesController < ApplicationController
  def index
  	@pastries = Pastry.all
  end

  def show
  	@pastry = Pastry.find(params[:id])
  	
  end

  def view
  end

  def edit
  end
end
