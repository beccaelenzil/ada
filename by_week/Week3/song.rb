class Song
  attr_reader :title, :artist, :filename, :play_count

  # class variable
  @@total_plays = 0
  @@number_of_songs = 0

  def initialize(title, artist, filename)
    @title = title
    @artist = artist
    @filename = filename
    @play_count = 0
    @@number_of_songs += 1
  end

  def summary
    #puts Song.definition
    puts self.class.definition
    return "#{@title}, by #{@artist}"
  end

  def play
    @play_count += 1
    @@total_plays += 1
    # ... more code that loads the song data from the file and sends it to the speakers ...
  end

  def self.definition
    return "A song is a short poem or other set of words set to music."
  end

  # class variable reader
  def self.total_plays
    return @@total_plays
  end

  def self.number_of_songs
    return @@number_of_songs
  end

end

# No instances required!
puts "total: #{Song.total_plays} plays"

respect = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")
moonlight = Song.new("What a Little Moonlight Can Do", "Billie Holiday", "songs/moonlight.mp3")

3.times do
  respect.play
end

5.times do
  moonlight.play
end

# No instances required!
puts "total: #{Song.total_plays} plays"
puts "number of songs: #{Song.number_of_songs}"