require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      count = @@genres.count(genre)
      hash[genre] = count
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      count = @@artists.count(artist)
      hash[artist] = count
    end
    hash
  end

  # binding.pry
end
