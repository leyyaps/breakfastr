class PastriesController < ApplicationController
  def index
  	@pastries = [{
  		name: "Croissant",
  		price_in_pence: 350,
  		description: "A delicious rich, crescent-shaped roll of leavened dough or puff pastry"
  		},
  		{
  		name: "Pain au Chocolat",
  		price_in_pence: 380,
  		description: "Fresh from the oven. It's golden and just slight crispy on the outside, with melted chocolate swirled throughout"
  			}]
  end

  def show
  end

  def view
  end

  def edit
  end
end
