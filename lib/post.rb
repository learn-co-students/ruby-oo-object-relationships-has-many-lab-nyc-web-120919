class Post
    @@all = []
    attr_reader :title
    
    def initialize(title)
        @title = title
        @@all << self
        Author.incrementor
    end

    def author=(author)
        @author = author
        author.posts << self
    end

    def author
        @author
    end

    def author_name
        if @author
            @author.name
        end
    end

    def self.all
        @@all
    end
end
