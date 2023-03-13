class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]
  def index
    @players = Player.all
  end

  def show; end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to players_path(@player)
  end

  def edit; end

  def update
    @player.update(player_params)
    redirect_to players_path(@player)
  end

  def destroy
    @player.destroy
    redirect_to players_path, status: :see_other
  end

  private

  def player_params
    params.require(:player).permit(:date, :confirmed)
  end

  def set_player
    @player = Player.find(params[:id])
  end
end
