class Author
    attr_reader :name
    @@posts = 0
    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        add_post(Post.new(title))
    end

    def self.incrementor
        @@posts += 1
    end

    def self.post_count
        @@posts
    end
end
