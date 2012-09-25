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
      Ship.new([0,0],[0,1]),
      Ship.new([1,0],[1,1]),
      Ship.new([2,0],[2,1],[2,2],[2,3],[2,4]),
      Ship.new([3,0],[3,1]),
      Ship.new([4,0],[4,1])
    ]
  end
  
  def draw
    #for each tile
    #print marker
    @size.times do |row|
      @size.times do |column|
        print @tiles[row * @size + column].marker + ' '
      end
      print "\n"
    end
  end
  
  def fire(row, column)
    @tiles[row * @size + column].called #finds the tile and called it  
  end

  def game_over?
    false
  end
end