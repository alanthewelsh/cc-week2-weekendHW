require ('minitest/autorun')
require ('pry')
require_relative ('../room')
require_relative ('../guest')
require_relative ('../song')

class TestRoom < Minitest::Test

  def setup
    
  
    @room1 = Room.new("Room1", 5)
    @room2 = Room.new("Room2", 10)
    @room3 = Room.new("Room3", 2)
    @rooms = [@room1, @room2, @room3]

    @guest1 = Guest.new("party1", 5, 1000) 
    @guest2 = Guest.new("party2", 6, 500)
    @guest3 = Guest.new("party3", 2, 300)

 

    @rock_list = Song.new(["Ruby,Ruby,Ruby.. la la la la la", "Matrix Soundtrack (add your own words)", "you.say(Yes); I.say(No); you.say(Stop) && I.say(go go go)"])
    @pop_list = Song.new(["99 red balloons", "umm-bop"])
  end 

  def test_can_group_be_added_to_room
    @room1.check_in(@guest1)
  assert_equal("party1", @room1.all_rooms[0].name)
  end 

  def test_can_groups_be_removed_from_room
    @room1.check_out(@guest1)
  assert_equal(true, @room1.all_rooms.empty?)
  end 


  def test_can_songs_be_added_to_room
    @room1.add_music(@rock_list)
  assert_equal(true , @room1.all_rooms.include?(@rock_list))
  end 

  def test_can_groups_be_removed_from_room
    @room1.remove_music(@guest1)
  assert_equal(false, @room1.all_rooms.include?(@rock_list))
  end 

end 