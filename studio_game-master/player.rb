require_relative 'treasure_trove'

class Player
  attr_reader :health
  attr_accessor :name, :points
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def <=>(other_player)
    other_player.score <=> score
  end  
   
  def to_s
    "I'm #{@name} health = #{@health}, points = #{points} and score = #{score}."
  end
  
  def blam
    @health -= 10
    puts "#{@name} got blammed!" # and now has a health of #{@health}
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted!" #and now has a health of #{@health}
  end 
  
  def score
    @health + points
  end
  
  def strong?
    @health > 100
  end
  
  def formatted_name
    @name.ljust(20, '.')
  end
  
  def points
    @found_treasures.values.reduce(0, :+)
  end
  
  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s treasures #{@found_treasures}."
  end
end

# Example code

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health

  player.w00t
  player.w00t
  puts player.health

  player.blam
  puts player.health
  puts player
end