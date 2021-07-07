class Author 
    attr_accessor :name, :posts

    @@all = []

    def initialize (name)
        @name = name
        @posts = []

        @@all << self
    end

    def add_post (post)
        post.author = self
    end

    def add_post_by_title (title)
        post = Post.new(title)
        self.add_post(post)
    end

    def self.post_count
        @@all.reduce(0) {|memo, author| memo += author.posts.size}
    end
end