class UserFootballLeague < ActiveRecord::Base
  attr_accessible :user_id, :football_league_id
  belongs_to :user
  belongs_to :football_league
end