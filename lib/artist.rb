class Artist 

    @@all = []

    attr_accessor :name, :songs
    def initialize (name)
        @name = name
        @songs = []

        @@all << self
    end

    def add_song (song)
        song.artist = self
    end

    def add_song_by_name (song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def self.song_count 
        @@all.reduce(0){|memo, artist| memo += artist.songs.size}
    end
end