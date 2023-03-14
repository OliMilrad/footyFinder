class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]
  def index

    @players = policy_scope(Player)
  end

  def show
    authorize @player
  end

  def new
    authorize @player
    @player = Player.new
  end

  def create
    authorize @player
    @player = Player.new(player_params)
    @user = User.find(params[:user_id])
    @player.user = @user
    if @player.save
      redirect_to player_path(@player)
    else
      render "players/show", status: :unprocessable_entity
    end
  end

  def edit
    authorize @player
  end

  def update
    authorize @player
    @player.update(player_params)
    redirect_to players_path(@player)
  end

  def destroy
    authorize @player
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
