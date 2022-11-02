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

end
