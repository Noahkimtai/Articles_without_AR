require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
my_at1=Author.new("Author1")
my_mag1=Magazine.new("my_mag1","Cmy_at1")
my_mag2=Magazine.new("my_mag2","Cmy_at1")
my_mag3=Magazine.new("m","Cat2")
art1=Article.new(my_at1,my_mag1,"Title1")
art2=Article.new(my_at1,my_mag1,"Title2")
my_at1.add_article(my_mag1,"Title3")
my_at1.add_article(my_mag1,"Title6")
my_at1.add_article(my_mag1,"Title7")
my_at1.add_article(my_mag2,"Title4")
my_at1.add_article(my_mag3,"Title5")








### DO NOT REMOVE THIS
binding.pry

0
