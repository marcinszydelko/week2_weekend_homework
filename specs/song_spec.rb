require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')


class SongTest < MiniTest::Test

  def test_read_songs_title
    song = Song.new("Thriller")
    assert_equal("Thriller", song.title)
  end




end
