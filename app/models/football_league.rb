class FootballLeague < ActiveRecord::Base
  attr_accessible :name, :pass_td, :pass_yards, :int, :pass_2pt 
  attr_accessible :rush_td, :rush_yards, :rush_2pt
  attr_accessible :rec_td, :rec_yards, :rec_2pt
  attr_accessible :fg_made, :fg_missed, :pat_made
  attr_accessible :kick_td, :punt_td, :int_td, :block_kick_td, :fumb_td, :fumb_lost, :def_sack, :def_block_kick, :def_fumb, :def_int, :def_safety, :pts_all_0, :pts_all_6, :pts_all_13, :pts_all_17, :pts_all_27, :pts_all_34, :pts_all_45, :pts_all_46
  has_many :user_football_leagues, :dependent => :delete_all
  has_many :users, through: :user_football_leagues
  validates :name, :presence => true
end