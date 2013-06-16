class FootballPlayer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :position, :player_id
  include Interface
  def profile(id)
    player_profile(id)
  end

  def stats(year, week, id)
    player_stats(year, week, id)
  end

end