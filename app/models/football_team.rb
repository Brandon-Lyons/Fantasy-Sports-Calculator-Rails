require './lib/interface'
class FootballTeam < ActiveRecord::Base
  include Interface
  attr_accessible :full_name, :abbr_name, :photo

  def profile(team)
    profile_team(team)
  end

end