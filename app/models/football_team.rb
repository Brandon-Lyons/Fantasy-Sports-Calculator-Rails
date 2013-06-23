require './lib/interface'
class FootballTeam < ActiveRecord::Base
  attr_accessible :full_name, :abbr_name

end