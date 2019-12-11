# belongs to author
class Post

  attr_reader :title
  attr_accessor :author
  
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

end