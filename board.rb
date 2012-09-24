#board setup
#
#define a size for the board
#create tiles for the size (squared) of the board
#  each tile should know its row and column
#keep an array of all of the tiles in that object
#
#=============
#=============
#=============
#
#draw method
#
#for each row
#  for each column in that row
#    find the tile for this row and column
#    print out that tile's marker
#  print a line break
# print another line break to show it's done
#
#=============
#=============
#=============
#
#shootin stuff
=begin
  user input for row and then column( 2 lines )
  find tile on board
  change status to hit
  change marker to hit marker
  redraw the board
=end

class Board

  def initialize
    @size = 10
    @tiles = []
  end
  
  def tile_create # list of coordinates
    @size.times do |row|
      @size.times do |column|
        @tiles << Tile.new(row, column)
        #p @tiles
      end
    end
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
    @tiles[row * @size + column].hit #finds the tile and hit it  
  end
  
end





bananas = Board.new
bananas.tile_create
bananas.draw

print 'Select a row(0-9): '
row = gets.chomp.to_i
print 'Select a column(0-9): '
column = gets.chomp.to_i

bananas.fire(row, column)
bananas.draw
