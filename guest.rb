class Guest
  attr_reader(:name, :size, :cash)

  def initialize(name, size, cash_in_pocket)
    @name = name
    @size = size
    @cash = cash_in_pocket
   
  end

  def party_size
    return @size
  end 

end 