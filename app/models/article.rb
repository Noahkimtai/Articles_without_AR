class Article
    attr_accessor :title, :date

    @@all = []

    def initialize(title,author,date,magazine)
        @title = title
        @author = author
        @date = date
        @magazine =  magazine
        @@all << self
    end

    # method to access the author of a the article
    def author
        @author.name
    end
    # method for accessing the name of the magazine the article belong to
    def magazine
        @magazine.name
    end

    def self.all
        @@all
    end

end
