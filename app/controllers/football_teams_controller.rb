class FootballTeamsController < ApplicationController

  def index
    @teams = FootballTeam.all
  end

  def show
    @user = current_user
    @team = FootballTeam.find( params[:id] )
    @profile = @team.profile(@team)
  end

  def create
    @user = User.find(params[:user_id])
    @team = FootballTeam.where(abbr_name: params[:stats][:team_id]).first
    @profile = @team.profile(@team)
    # @stats = @team.stats(params[:stats][:year], params[:stats][:week], params[:stats][:player_id])
  end

end