 require 'colored_grid'
 require 'binary_tree'

 grid = ColoredGrid.new(25,25)
 BinaryTree.on(grid)

 start = grid[0, 0]
 distances = start.distances
 grid.distances = distances

 grid.distances = distances.path_to(grid[grid.rows-1,0]) 

 grid.to_png.save "colorized.png"
