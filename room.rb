class Room
  attr_reader :room_name,:room_capacity, :all_rooms

  def initialize(room_name, room_capacity)
   @all_rooms = []
   @room_name = room_name
   @room_capacity = room_capacity
  end

  def check_in(guest_group)
    @all_rooms << guest_group
  end 

  def check_out(group_name)
    @all_rooms.delete(group_name)
  end

  def add_music(track_list)
    @all_rooms << track_list
  end

  def remove_music(track_list)
    @all_rooms.delete(track_list)
  end

end 