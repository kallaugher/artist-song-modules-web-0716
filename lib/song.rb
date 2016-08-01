require 'pry'

class Song
  extend Memorable::ClassMethods # for class methods
  include Memorable::InstanceMethods
  include Paramable
  extend Findable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
