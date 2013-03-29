class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.time :time
      t.string :player1
      t.string :player2
      t.string :parentTournament
      t.string :links

      t.timestamps
    end
  end
end
