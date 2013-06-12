class FootballLeague < ActiveRecord::Base
  attr_accessible :name, :pass_td, :pass_yards, :int, :pass_2pt, :rush_td, :rush_yards, :rush_2pt, :rec_td, :rec_yards, :rec_2pt
  has_many :user_football_leagues, :dependent => :delete_all
  has_many :users, through: :user_football_leagues
end