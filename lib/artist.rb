class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    end

  def songs
    @songs
  end

    def add_song_by_name(song)
      new_song = Song.new("#{song}")
      self.add_song(new_song)
      new_song
    end

    @@song_count = 0

    def self.song_count
      i = 0
      while i < @songs.length
        i += 1
      end
      @@song_count = i
    end
end
