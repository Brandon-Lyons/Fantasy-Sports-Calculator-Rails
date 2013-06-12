class FootballLeaguesController < ApplicationController

  def index
    @user = current_user
    @football_leagues = @user.football_leagues.all
  end

  def new
    @football_league = FootballLeague.new
  end

  def create
    @football_league = FootballLeague.create( params[:football_league] )
    if @football_league.save
      UserFootballLeague.create(user_id: current_user.id, football_league_id: FootballLeague.last.id)
      redirect_to :action => "index"
    else
      redirect_to :action => "index"
    end
  end

  def show
    @football_league = FootballLeague.find( params[:id] )
  end

  def edit
    @football_league = FootballLeague.find( params[:id] )
  end

  def update
    @football_league = FootballLeague.find( params[:id] )
    if @football_league.update_attributes( params[:football_league] )
      redirect_to :action => "index"
    else
      render 'edit'
    end
  end


end