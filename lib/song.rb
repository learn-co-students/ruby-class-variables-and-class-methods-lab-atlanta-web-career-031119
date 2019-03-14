require 'pry'

class Song

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    genres = []
    @@genres.each do |item|
      if genres.include?(item) == false
        genres << item
      end
    end
    genres
  end

  def self.artists
    artists = []
    @@artists.each do |item|
      if artists.include?(item) == false
        artists << item
      end
    end
    artists
  end

  def self.artist_count
    artists = self.artists
    artists.each do |item|
      @@artist_count[item] = @@artists.count(item)
    end
    @@artist_count
  end

  def self.genre_count
    genres = self.genres
    genres.each do |item|
      @@genre_count[item] = @@genres.count(item)
    end
    @@genre_count
  end

end
