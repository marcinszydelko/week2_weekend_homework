class Room

  attr_reader :room_number, :guests, :songs

  def initialize(room_number, guest, songs)
    @room_number = room_number
    @guests = guest
    @songs = songs
  end

  def check_in_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests << guest
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs << song
  end





end
