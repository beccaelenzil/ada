class Song
  attr_reader :title, :artist, :filename, :play_count

  # Initialize our total play count
  # This will be set to 0 when the program is loaded
  @@total_plays = 0


  def initialize(title, artist, filename)
    @title = title
    @artist = artist
    @filename = filename
    @play_count = 0
  end

  def summary
    return "#{@title}, by #{@artist}"
  end

  def play
    @play_count += 1
    @@total_plays += 1
    # ... load the song data from the file and send it to the speakers ...
  end

  # Define a class method to access the class variable
  def self.total_plays
    return @@total_plays
  end

  def self.most_played(array_of_songs)
    plays = []
    array_of_songs.each do |song|
      plays.push(song.play_count)
    end
    i = plays.rindex(plays.max)
    return array_of_songs[i]
  end

end

respect = Song.new("Respect", "Aretha Franklin", "songs/respect.mp3")
moonlight = Song.new("What a Little Moonlight Can Do", "Billie Holiday", "songs/moonlight.mp3")

3.times do
  respect.play
end

5.times do
  moonlight.play
end
most_played_song = Song.most_played([respect, moonlight])
puts "most played: #{most_played_song.summary}"
