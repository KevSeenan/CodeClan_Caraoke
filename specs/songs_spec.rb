require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')

class TestSong < Minitest::Test

  def setup()
    @song1 = Song.new("Always", "Bon Jovi")
    @song2 = Song.new("Sweet Child of Mine", "Guns 'n' Roses")
    @songs = []
  end

  def test_song_has_a_title()
    assert_equal("Always", @song1.title)
  end

  def test_song_has_an_artist()
    assert_equal("Bon Jovi", @song1.artist)
  end

end
