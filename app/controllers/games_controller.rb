class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
  end

  def edit
  end

  def update
  end

  def new
    @game = Game.new
  end

  def create
    other_user = User.find(params[:other_user_id])
    current_user = User.find(params[:user_id])
    @cards = []
    cards_user = Card.current_user.all.sample(11)
    cards_other_user = Card.other_user.all.sample(10)
    @cards << (cards_user + cards_other_user)
    @game = Game.new(user: current_user, other_uther: other_user)
    if @game.save!
      redirect_to @game
    else
      render :new, notice: "La partie n'a pas pu être lancée ..."
    end
  end

  def destroy
    if @game.destroy!
      redirect_to root_path
    else
      render :destroy, notice: "la partie n'a pas pu être supprimée ..."

    end
  end

  private

  def games_params
    params.require(:game).permit(:result, :card_id, :user_id, :other_user_id)
  end
end
