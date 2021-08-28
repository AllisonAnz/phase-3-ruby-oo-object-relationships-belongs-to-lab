# In this lab code a Song and Artist class. A song should belong to an artist 
# Artist has a name
class Artist 
    attr_accessor :name 
end

artist = Artist.new 
artist.name = "Beyonce"
puts artist.name