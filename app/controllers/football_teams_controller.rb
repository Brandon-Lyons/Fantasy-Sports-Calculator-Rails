class FootballTeamsController < ApplicationController

  def index
    @teams = FootballTeam.all
  end

  def show
    @team = FootballTeam.find( params[:id] )
  end

end