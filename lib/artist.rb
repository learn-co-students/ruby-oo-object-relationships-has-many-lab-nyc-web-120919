class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_object)
        song_object.artist = self
    end

    def add_song_by_name(song_title)
        new_song = Song.new(song_title)
        new_song.artist = self
    end

    def self.song_count
        Song.all.uniq.length
    end
end
