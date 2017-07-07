require ('minitest/autorun')
require ('pry')

require_relative ('../song')

class TestSong < Minitest::Test

  def setup
    @rock_list = Song.new(["Ruby,Ruby,Ruby.. la la la la la", "Matrix Soundtrack (add your own words)", "you.say(Yes); I.say(No); you.say(Stop) && I.say(go go go)"])
  end 

  def test_does_room_have_song_list
    assert_equal(3, @rock_list.song_count)
  end 

  def test_can_add_song
     @rock_list.song_to_be_added("Highway to Hell")
    assert_equal(4, @rock_list.song_count)
  end

  def test_can_search_for_song
    song_found = @rock_list.search_song
    assert_equal("Ruby,Ruby,Ruby.. la la la la la", song_found)
  end 


end 