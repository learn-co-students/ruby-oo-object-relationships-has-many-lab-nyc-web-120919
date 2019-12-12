class Song
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
        Artist.incrementor
    end

    def self.all
        @@all
    end

    def artist
        @artist
    end

    def artist_name
        if @artist
            @artist.name
        end
    end

    def artist=(artist)
        @artist = artist
        artist.songs << self
    end
end
