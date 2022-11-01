class Article
    attr_accessor :title, :author_name, :date

    @@all = []

    def initialize
        @title = title
        @author_name = author_name
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end

end
