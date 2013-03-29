class Match < ActiveRecord::Base
  attr_accessible :date, :links, :parentTournament, :player1, :player2, :time
end
