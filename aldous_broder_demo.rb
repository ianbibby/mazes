require 'colored_grid'
require 'aldous_broder'

grid = ColoredGrid.new(50,50)
AldousBroder.on(grid)
start = grid[0,0]
distances = start.distances
grid.distances = distances.path_to(grid[grid.rows-1,0])

img = grid.to_png
img.save "aldous_broder.png"
puts grid
