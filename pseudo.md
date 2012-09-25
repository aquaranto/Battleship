 board setup
 
 define a size for the board
 create tiles for the size (squared) of the board
   each tile should know its row and column
 keep an array of all of the tiles in that object
 
 =============
 =============
 =============
 
 draw method
 
 for each row
   for each column in that row
     find the tile for this row and column
     print out that tile's marker
   print a line break
  print another line break to show it's done
 
 =============
 =============
 =============
 
 shootin' stuff

  user input for row and then column( 2 lines )
  find tile on board
  change status to called
  change marker to called marker
  redraw the board

  find the ship
	tell it that it's gettin shot at
	

 =============
 =============
 =============

run a complete game

ask the board if it's done 
	are all the ships sunk?
		ships are sunk if they're hit
if the game is not finished
keep having turns (ask, hit, redraw)
if it is over, determine winner

 =============
 =============
 =============

define the ships
	how many tiles it takes up - all the same (for now)
	how many - 5
	orientation -vertical/ horizontal
	tiles that it's on
place them according to nick's rule
	(in a line)
draw them

firing on ships







