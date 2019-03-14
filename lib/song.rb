require 'pry'

class Song
    @@count=0
    @@artists=[]
    @@genres=[]
    def initialize(title, artist, genre)
        @name=title
        @artist=artist
        @genre=genre
        @@count+=1
        @@artists<<artist
        @@genres<<genre
    end
    attr_accessor :name, :artist, :genre
    def self.count
        return @@count
    end
    def self.genres
        return @@genres.unique
    end
    def self.artists
        return @@artists.unique
    end
end
