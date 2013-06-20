class FootballPlayersController < ApplicationController
  before_filter :check_for_params

  def index
    @players = @param.all
  end

  def show
    @user = current_user
    @player = FootballPlayer.find( params[:id] )
    @profile = @player.profile(@player.player_id)
  end

  def create
    @user = User.find(params[:user_id])
    @player = FootballPlayer.where(player_id: params[:stats][:player_id]).first
    @stats = @player.stats(params[:stats][:year], params[:stats][:week], params[:stats][:player_id])
  end

  private
  def check_for_params
    if params[:position]
      @param = FootballPlayer.where( position: params[:position] )
    else
      @param = FootballPlayer
    end
  end

end