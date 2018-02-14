class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
    end

  def songs
    @songs
  end

    def add_song_by_name(song)
      new_song = Song.new("#{song}")
      self.add_song(new_song)
      new_song
      @@song_count += 1
    end

    @@song_count = 0

    def self.song_count
      @@song_count
    end
end
