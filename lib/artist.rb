class Artist

  attr_accessor :name, :songs

@@all_artist=[]

 def initialize(name_arg)
    @name=name_arg
    @@all_artist<<self
 end


def self.all
    @@all_artist
end


def add_song(song)
    song.artist = self
  end


  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name (name)
    song=Song.new(name)
    song.artist=self
  end

  def self.song_count
    Song.all.count
  end

 

end