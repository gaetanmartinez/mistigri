class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def destroy
    if @card.destroy!
      redirect_to @game
    end
  end
end
