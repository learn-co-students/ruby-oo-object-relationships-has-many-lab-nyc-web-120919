class Author 

    attr_accessor :name
    attr_reader :post

    def initialize(name)
    @name = name
    end 

    def posts
        Post.all
    end 

    def add_post(post)
        post.author = self
    end 

    def add_post_by_title(title)
        my_post = Post.new(title)
        my_post.author = self 
    end 

    def self.post_count
        Post.all.count 
    end 

end 