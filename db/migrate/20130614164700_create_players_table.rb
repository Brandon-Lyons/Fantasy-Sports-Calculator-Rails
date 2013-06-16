class CreatePlayersTable < ActiveRecord::Migration

  def change
    create_table :football_players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :player_id
    end
  end
end