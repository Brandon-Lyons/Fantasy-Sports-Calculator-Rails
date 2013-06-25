class CreateAndPopulateFootballTeamsTable < ActiveRecord::Migration

  def change
    create_table :football_teams do |t|
      t.string :full_name
      t.string :abbr_name
    end
  end
end