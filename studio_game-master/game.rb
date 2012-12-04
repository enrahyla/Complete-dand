require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(player)
    @players << player
  end
  
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}."  
    @players.each do |player|
      puts player
    end
    
    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} treasures to be found:"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    
    1.upto(rounds) do |round|
      puts "\nRound #{round}: "
      @players.each do |player|
        GameTurn.take_turn(player)
      end
    end
  end
  
  def print_stats
    strong_players, wimpy_players = @players.partition { |player| player.strong? }
    puts ""
    puts "#{@title} Statistics".center(30, "-")
    
    puts "\n#{@title} High Scores:"
    @players.sort.each do |player|
      puts "#{player.formatted_name} #{player.score}"
    end
    
    puts "\n#{@title}'s #{strong_players.size} strongest players:"
    strong_players.sort.each do |player|
      puts "#{player.formatted_name} #{player.health}"
    end
    puts "\n#{@title}'s #{wimpy_players.size} wimpiest players:"
    wimpy_players.sort.each do |player|
      puts "#{player.formatted_name} #{player.health}"
    end
    
    puts "\n#{@title} Treasure Totals:"
    @players.sort.each do |player|
      puts "#{player.formatted_name} #{player.points}"
    end
  end
end