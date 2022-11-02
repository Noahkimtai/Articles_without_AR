class Article
    attr_reader :title

    @@all = []

    def initialize(author,magazine,title)
        @author = author
        @magazine =  magazine
        @title = title
        @@all << self
    end
    # method to access the author of a the article
    def author
        @author.name
    end
    # method to access the magazine for the article
    def magazine
        @magazine.name
    end
    def self.all
        @@all
    end
end