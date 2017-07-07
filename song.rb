class Song
  attr_reader :song_list

  def initialize(song_list_input)
   @song_list = song_list_input
  end 

  def song_count
    return @song_list.count
  end 

  def song_to_be_added(added_song)
    @song_list << added_song
  end 

  def search_song
    return @song_list[0]
  end 

end 