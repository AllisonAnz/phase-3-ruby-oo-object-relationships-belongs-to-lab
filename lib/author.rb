# Author has a name 
class Author 
    attr_accessor :name 
end 

author = Author.new 
author.name = "Uncle Bob"
puts author.name 
#=> Uncle Bob