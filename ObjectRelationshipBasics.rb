# Object Relationship Basics 

# In this lesson we'll take a look at one of the most basic ways 
# that two classes or model can relate to one another 

#  The "Belong To" Relationship 

# Imagine we are creating an app that allows users to list and interact with their 
# music library. 
# In this application, it makes sense for us to have a class respresent an individual song 

# Our Song class might look like 
class Song 
    attr_accessor :title 

    def initialize(title)
        @title = title 
    end 
end 

hotline_bling = Song.new("Hotline Bling")
hotline_bling.title # => "Hotline Bling"

# In the real world, a song belongs to an artist and and artist owns many songs 

# Give individual songs an artist attribute 
class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end
end 

# Now that we have a setter and getter for a song's artist attribute we can do this 
hotline_bling.artist = "Drake"
hotline_bling.artist # => "Drake" 

# User's of our music app might want to know more info about an indivudal artist 
# WHat albums has Drake created, or genre 

# The relationship model that we have set up in incomplete 
# An individual song does have an artist attribute, but instead of setting 
# it equal to a complex object, such as an instance of some kind of Artist class 
# that we can get more info from, we've set it equal to a simple string 
# This string cant tell us what genre or how many albums it has created etc. 

# Instead of setting the #artist=90 method equal to a string of an artist's name, 
# Create an Artist class and assign an individual songs artist attribute equal to an 
# instance of that class 

class Artist 
    attr_accessor :name, :genre 
    def initialize(name, genre)
        @name = name 
        @genre = genre 
    end 
end 
drake = Artist.new("Drake", "rap")
hotline_bling = Song.new("Hotline Bling")

hotline_bling.artist = drake 
puts hotline_bling.artist.name #=> "Drake"
puts hotline_bling.artist.genre #=> "rap"

# Now our relationship between songs and their artist is complete 
# This is called the belongs to relationship 

# A song can only have one artist 
# So we say that a song "belongs to" and artist 

# We enact this relationship by given songs a setter and getter method for their artist
