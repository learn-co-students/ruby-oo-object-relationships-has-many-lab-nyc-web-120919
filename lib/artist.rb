require 'pry'

class Artist

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    #song = Song.new
    song.artist = self
  end

  def add_song_by_name(song_name)
    #go into Song because i'm creating a new song
    #song_name is a string since it's passing a string in the rspec
    new_song = Song.new(song_name)
    self.add_song(new_song)
  end

  def self.song_count
    Song.all.count
  end

end