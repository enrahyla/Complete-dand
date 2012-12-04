require_relative 'game'

players = []
players << player1 = Player.new("moe")
players << player2 = Player.new("larry", 60)
players << player3 = Player.new("curly", 125)
players << player4 = Player.new("jamie", 135)
players << player5 = Player.new("gaz", 130)
players << player6 = Player.new("jase", 145)

knuckleheads = Game.new("Knuckleheads")
players.each do |player|
  knuckleheads.add_player(player)
end
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)

knuckleheads.play(6)
knuckleheads.print_stats