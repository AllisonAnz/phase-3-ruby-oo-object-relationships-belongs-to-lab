# Post and Author: A post should belong to an author 
require_relative "../lib/author.rb"
class Post
  attr_accessor :title, :author
end

post = Post.new 
post.title = "Hello World"
puts post.title 
#=> Hello World 

author = Author.new 
post.author = author 
author.name = "Uncle Bob"
puts post.author.name 
#=> Uncle Bob