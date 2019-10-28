require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')


class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("John")

    @room1 = Room.new(1, [], [])
    @room2 = Room.new(2, [@guest1], [])
    @room3 = Room.new(3, [], [])

    @song1 = Song.new("Thriller")
    @song2 = Song.new("We are the champions")
    @songs = [@song1, @song2]
  end

  def test_read_room_number
    assert_equal(1, @room1.room_number)
  end

  def test_read_room_vacant
    assert_equal([], @room1.guests)
  end

  def test_read_room_occupied
    assert_equal([@guest1], @room2.guests)
  end

  def test_check_in_guest
    @room3.check_in_guest(@guest1)
    assert_equal(1, @room3.guests.size)
  end

  def test_check_out_guest
    @room2.check_out_guest(@guest1)
    assert_equal(0, @room1.guests.size)
  end

  def test_add_songs_to_room
    @room2.add_song(@song1)
    assert_equal(1, @room2.songs.size)
  end




end
