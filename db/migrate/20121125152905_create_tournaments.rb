class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :start_date
      t.string :name
      t.string :sponsor
      t.string :location
      t.string :prizes
      t.string :entry_reqs
      t.string :format
      t.string :status
      t.string :links

      t.timestamps
    end
  end
end
