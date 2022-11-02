class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self  
  end

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

  # author can create new article
  def add_article(magazine,title)
    Article.new(self,magazine,title)
  end
  # topic areas for the author
  def topic_areas
    magazines.map{|magazine|magazine.category}.uniq
  end
  
end
