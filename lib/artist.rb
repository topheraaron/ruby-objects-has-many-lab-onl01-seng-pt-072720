class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
  end

  def songs
    Song.all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    song.artist 
  end
end
