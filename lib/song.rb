require_relative "../lib/artist.rb"
# Song 
#   has a title 
#   belongs to an artist 
#   knows the name of the artist belongs to  

class Song 
    attr_accessor :title, :artist
end 

song = Song.new 
song.title = "7/11"

#create new artist
artist = Artist.new 
#make song artist equal to the new instance of artist
song.artist = artist
#set the name of aritst
artist.name = "Beyonce"

puts song.artist.name
#=> Beyonce