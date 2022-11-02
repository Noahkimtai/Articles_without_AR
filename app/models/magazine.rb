class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  
  def self.all
    @@all
  end

  # authors writting for the magazine
  # articles in the magazine
  def self.find_by_name(name)
    Magazine.all.find{|magazine|magazine.name==name}
  end
  def contributors
    Article.all.filter{|article|article.magazine.name==@name}.
    map{|article|Author.find_by_name(article.author)}.uniq
  end

  # return the first magazine that matches the name
  def find_by_name(name)
    Magazine.all.find{|magazine|magazine.name==name}
  end
  # all the articles within a magazine
  def article_titles()
    magazine_articles.map{|article|article.title}
  end
  # return authors with more than two articles
  def contributing_authors
    main_authors=[]
    magazine_authors.tally.each{|key,value|value>2 && (main_authors<<key)}
    main_authors
  end

end
