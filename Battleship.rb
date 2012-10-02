#!/usr/bin/env ruby
require './tile'
require './board'
require './ship'

new_game = Board.new
new_game.ship_create
new_game.tile_create
new_game.draw

until new_game.game_over?
  print 'Select a row(0-9): '
  row = gets.chomp  
  break if row.downcase == "quit"  
  
  print 'Select a column(0-9): '
  column = gets.chomp
  break if column.downcase == "quit"

  new_game.fire(row.to_i, column.to_i)
  new_game.draw
end

