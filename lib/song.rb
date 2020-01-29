require 'pry'

class Song
  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
  def self.genre_count
    genres = @@genres.uniq
    genres_hash = {}
    genres.each do |i|
      genres_hash[i] = @@genres.count(i)
    end
    return genres_hash
  end
  def self.artist_count
    artists = @@artists.uniq
    artists_hash = {}
    artists.each do |i|
      artists_hash[i] = @@artists.count(i)
    end
    return artists_hash
  end
end
