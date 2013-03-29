class ChangeTournamentsTable < ActiveRecord::Migration
  def change
    add_column :tournaments, :subscribed, :boolean
    add_column :tournaments, :ongoing, :boolean
    add_column :tournaments, :past, :boolean
    add_column :tournaments, :future, :boolean
  end
end
