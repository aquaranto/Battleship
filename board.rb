class Board

  def initialize
    @size = 10
    @tiles = []
  end
  
  def tile_create # list of coordinates
    @size.times do |row|
      @size.times do |column|
        has_ship = @fleet.any? { |ship| ship.anchored?([row, column]) }
        
        @tiles << Tile.new(row, column, has_ship)
      end
    end
  end
  
  def ship_create # list of coordinates
    @fleet = [
      Ship.new([0, 0], :right, 2),
      # Ship.new([3, 0], :right, 5),
      # Ship.new([5, 5], :down,  4)
    ]
    
    # Keep an array of all tiles in all ships:
    # For each ship in the fleet:
    #  take its coords
    #  add its coords to our tiles array
    @all_ship_coordinates = []
    
    @fleet.each do |ship|
      @all_ship_coordinates += ship.coords
    end
    
    # p "Original ship tiles: #{ @all_ship_coordinates }"
  end
  
  def draw
    #for each tile
    #print marker
    @size.times do |row|
      @size.times do |column|
        print @tiles[column * @size + row].marker + ' '
      end
      print "\n"
    end
  end
  
  def fire(row, column)
    @tiles[column * @size + row].called #finds the tile and called it  
    
    # if hit ship tile, remove from @all_ship_tiles array
    @all_ship_coordinates.delete([column,row])
    
    # p "Remaining ship tiles: #{ @all_ship_coordinates }"
    # p "Remaining ship tiles: " + @all_ship_coordinates.to_s
  end

  def game_over?
    # 1: goal of the game is completed
    #  when all ship tiles are hit (o)
    # return true if @all_ship_tiles is empty
    return true if @all_ship_coordinates.empty?
    
    # 2: person wants to quit
    false
  end  
  
end