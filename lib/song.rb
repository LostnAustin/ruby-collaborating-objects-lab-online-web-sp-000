class Song
attr_accessor :name, :artist, :song
@@all = []

  def initialize(name)
    @name = name
    @@all << self

  end

  def artist=(artist)
  @artist = artist
  artist.add_song(self) unless artist.songs.include?(self)
end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)

  song = Song.new(filename.split(" - ")[1])
  #filename.song = self
end

    def artist_name=(artist_name)
      @artist_name = artist_name
      binding.pry
      @@all.find {|n| n.name == artist_name} || Artist.new(artist_name)


    end

end
