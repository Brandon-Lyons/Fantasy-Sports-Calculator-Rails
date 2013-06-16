class CreatePositionTables < ActiveRecord::Migration

  def change
    create_table :quarterbacks do |t|
      t.string :first_name
      t.string :last_name
    end
    create_table :running_backs do |t|
      t.string :first_name
      t.string :last_name
    end
    create_table :tight_ends do |t|
      t.string :first_name
      t.string :last_name
    end
    create_table :wide_receivers do |t|
      t.string :first_name
      t.string :last_name
    end
    create_table :kickers do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end