require "pry"
class Post

    attr_accessor :author, :title, :name

    @@all = []

    def initialize (title)
        @title = title
        @author 
        @name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if self.author
            self.author.name
        else nil
        end
    end
end