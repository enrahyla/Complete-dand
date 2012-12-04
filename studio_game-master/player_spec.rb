require_relative 'player'

describe Player do
  
  before do
    @initial_health = 150
    @player = Player.new("larry", @initial_health)       
  end
  
  it "has a capitalized name" do
    @player.name.should == "Larry"
  end
  
  it "has an initial health" do
    @player.health.should == 150
  end
  
  it "has a string representation" do
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.to_s.should == "I'm Larry health = 150, points = 100 and score = 250."
  end
  
  it "computes a score as the sum of its health and number of points" do
    @player.found_treasure(Treasure.new(:hammer => 50))
    @player.found_treasure(Treasure.new(:hammer => 50))

    @player.score.should == 250
  end
  
  it "increases health by 15 when w00ted" do
    @player.w00t
    @player.health.should == (@initial_health + 15)
  end    
  
  it "decreases health by 10 when blammed" do    
    @player.blam
    @player.health.should == (@initial_health - 10)
  end
  
  it "computes points as the sum of all treasure points" do
    @player.points.should == 0

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 50

    @player.found_treasure(Treasure.new(:crowbar, 400))

    @player.points.should == 450

    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.points.should == 500
  end
  
  context "with a health greater than 100" do
    before do
      @player = Player.new("jamie", @initial_health)
    end

     it "is strong" do
       @player.should be_strong 
       # OR -> @player.strong?.should be_true
       # OR -> @player.strong?.should == true
     end
  end
  context "with a health less than or equal to 100" do    
    before do
      @player = Player.new("jamie")
    end
        
    it "is weak" do
      @player.should_not be_strong
    end
  end   
end