require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable

  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []


  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.all
    @@songs
  end
end
