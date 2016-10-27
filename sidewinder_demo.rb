require 'grid'
require 'sidewinder'

grid = Grid.new 4,4
Sidewinder.on grid
img = grid.to_png(20)
img.save "sidewinder.png"
