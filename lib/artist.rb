class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
  end

  def self.song_count
    @@song_count
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end


end
