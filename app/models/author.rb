class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self  
  end

  
  # topic areas for the author
  
  # author can create new article

  def self.all
    @@all
  end
  # all articles writen by this author?
  def articles
    Article.all.filter{|article|article.author==@name}
  end
  # magazines the author has written for
  # all magazine instances from articles
  def magazines
    articles.map{|article|article.magazine}.uniq
  end
  
end
