class Ship
  
  def initialize(*coords)
    @coords = coords
  end
  
  def anchored?(coord)
    @coords.include?(coord)
  end
  
end