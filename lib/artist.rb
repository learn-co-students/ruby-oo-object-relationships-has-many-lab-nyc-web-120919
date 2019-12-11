require 'pry'

class Artist 

    attr_accessor :name, :artist 
    attr_reader :songs 

    def initialize(name)
    @name = name
    end 

    def songs
        Song.all  
        #binding.pry 
    end 

    def add_song(song)
        #binding.pry 
        song.artist = self
        #binding.pry
    end 

    def add_song_by_name(song)
        #binding.pry
        my_song = Song.new(song) 
        my_song.artist = self
    end 

    def self.song_count
        Song.all.count
    end 

end 