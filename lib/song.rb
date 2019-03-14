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
        if @@artists.include?(artist)
        else
            @@artists<<artist
        end
        if @@genres.include?(genre)
        else
            @@genres<<genre
        end
    end
    attr_accessor :name, :artist, :genre
    def self.count
        return @@count
    end
    def self.genres
        return @@genres
    end
    def self.artists
        return @@artists
    end
end
