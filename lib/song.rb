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
        return @@genres.uniq
    end
    def self.artists
        return @@artists.uniq
    end
    def self.genre_count
        genre_hash={}
        @@genres.each {|item| genre_hash[item]=@@genres.count(item)}
        return genre_hash
    end
    def self.artist_count
        artist_hash={}
        @@artists.each {|item| artist_hash[item]=@@artists.count(item)}
        return artist_hash
    end
end
