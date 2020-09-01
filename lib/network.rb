class Network
  attr_reader :name, :shows
 def initialize(name)
   @name = name
   @shows = []
 end

 def add_show(show)
   @shows << show
 end

 def main_characters
   main_characters = []
   @shows.each do |show|
     find_result = show.characters.find do |character|
       character.salary > 500_00 && character.name == character.name.upcase
     end
     main_characters << find_result if find_result != nil
   end
   main_characters
 end

 def actors_by_show
   shows_actors = {}

   @shows.each do |show|
     shows_actors[show] = show.characters.map {|character| character.actor}
   end
   shows_actors
 end
end
