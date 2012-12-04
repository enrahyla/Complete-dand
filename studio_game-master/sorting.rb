require_relative 'player'

player1 = Player.new("jamie", 100)
player2 = Player.new("jason", 150)
player3 = Player.new("deno", 200)

players = [player1, player2, player3]

# one way of sorting by high score
#puts players.sort_by { |player| player.score }.reverse

#puts player2.score <=> player2.score
# ...a better way
# def <=>(other_player)
#   other_player.score <=> @player.score
# end
puts players.sort