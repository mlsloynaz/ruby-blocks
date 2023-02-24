class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

song1 = Song.new("asi es la vida", "camila", 4)
song2 = Song.new("asi es el amor", "el", 3)
song2 = Song.new("asi es la paz", "yo", 2)

class Playlist
  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def each
    @songs.each {|song| yield song}
  end

  def add_song(song)
    @songs << song
  end

  def play_songs
    @songs.each{ |s| s.play}
  end
end


play_list = Playlist.new("camila play list")
play_list.add_song(song1);
play_list.add_song(song2);
play_list.add_song(song2);

# play_list.each { |song| song.play }

play_list.play_songs

okie_songs = play_list.select { |song| song.name =~ /la/ }
p okie_songs
