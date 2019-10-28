I'm out materequire('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')


class GuestTest < MiniTest::Test

  def test_read_name
    guest = Guest.new("John")
    assert_equal("John", guest.name)
  end















end
