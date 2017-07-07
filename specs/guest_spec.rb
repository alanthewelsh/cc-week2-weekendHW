require ('minitest/autorun')
require ('pry')
# require_relative ('../room')
require_relative ('../guest')
require_relative ('../song')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("party1", 5, 1000) 
    @guest2 = Guest.new("party2", 6, 500)
    @guest3 = Guest.new("party3", 2, 300)
  end

  def test_party_size_known
      party_number = @guest2.party_size
    assert_equal(6, party_number)
  end 

  def test_total_number_of_guests_in_building
    total_guests = @guest1.party_size + @guest2.party_size + @guest3.party_size
    assert_equal(13, total_guest)
  end 

end 