class Ship
  
  attr_reader :coords
  
# get starting coordinates, direction, and ship length
#create an array for the coordinates of the ship. 
# ship starting at (x,y), next tile @ (x+1, y), next (x+2, y)
#(x+3, y), (x+4, y)

  def initialize(start_coord, direction, ship_length)
    @start_coord = start_coord
    @coords = []
    
    x_incrementer = 0
    y_incrementer = 0

    case direction
    when :right
      x_incrementer = 1
    when :left
      x_incrementer = -1
    when :up
      y_incrementer = -1
    when :down
      y_incrementer = 1
    end
    
    ship_length.times do |i|

      x = @start_coord[0] + (x_incrementer * i)
      y = @start_coord[1] + (y_incrementer * i)
      
      @coords << [x, y]
    end
  end
  
  def anchored?(coord)
    @coords.include?(coord)
  end
  
end

#define the ships
