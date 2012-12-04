class Movie
   attr_reader :length
   attr_accessor :title, :rank
   
   def initialize(title, length, rank)
     @title = title.capitalize
     @length = length
     @rank = rank
   end
   
   def to_s
     "#{@title} is #{@length} minutes long and is ranked #{@rank}"
   end
   
   def thumbs_up
     @rank += 1
   end

   def thumbs_down
     @rank -= 1
   end
   
end

class Playlist

  attr_accessor :listname
  attr_reader :movie
  
  def initialize(listname)
    @listname = listname
    @playlist = []
    @length = []
  end
  
  def add_movie(movie)
    @playlist << movie
  end
  
  def remove_movie(movie)
    @playlist.pop(movie)
  end
  
  def play
    puts "There are #{@playlist.size} movies in #{@listname} with a total viewing time #{total_length} minutes:"
    puts  
    n = 0
    @playlist.each do |movie|
      n += 1
      puts "#{n}. #{movie}" 
    end
  end
  
  def total_length
    @total = 0   
    @playlist.each do |movie|
      @total += movie.length
    end
    @total
  end            

end

movie1 = Movie.new("heat", 187, 3)
movie2 = Movie.new("harry Potter and the Philosopher's Stone", 135, 10)
movie3 = Movie.new("the Avangers", 121, 8)
movie4 = Movie.new("goodwill Hunting", 96, 6)

jamie = Playlist.new("Favourites")
jamie.add_movie(movie1)
jamie.add_movie(movie2)
jamie.add_movie(movie3)
jamie.add_movie(movie4)

jamie.play