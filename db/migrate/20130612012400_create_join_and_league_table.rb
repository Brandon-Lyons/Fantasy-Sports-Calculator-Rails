class CreateJoinAndLeagueTable < ActiveRecord::Migration

  def change
    create_table :football_leagues do |t|
      t.string  :name
      t.integer :pass_td,    :default => 6
      t.integer :pass_yards, :default => 1
      t.integer :int,        :default => -2
      t.integer :pass_2pt,   :default => 2
      t.integer :rush_yards, :default => 1
      t.integer :rush_td,    :default => 6
      t.integer :rush_2pt,   :default => 2
      t.integer :rec_yards,  :default => 1
      t.integer :rec_td,     :default => 6
      t.integer :rec_2pt,    :default => 2
    end

    create_table :user_football_leagues do |t|
      t.integer :user_id
      t.integer :football_league_id
    end
  end
end