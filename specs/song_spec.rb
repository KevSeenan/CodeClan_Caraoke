equire('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < Minitest::Test

  def setup()
    @song1 = Song.new("Always", "Bon Jovi")
    @song2 = Song.new("Sweet Child of Mine", "Guns 'n' Roses")
  end

  def test_song_has_a_name()
  end

end
