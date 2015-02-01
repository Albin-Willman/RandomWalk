module GridsHelper

  def slot_class(grid, x, y)
    classes = ['slot']
    classes << 'start-slot' if x == grid.start_x && y == grid.start_y
    classes << 'stop-slot'  if x == grid.stop_x  && y == grid.stop_y
    classes << 'goal-slot'  if x == grid.goal_x  && y == grid.goal_y
    classes << 'pos-slot'  if x == grid.pos_x  && y == grid.pos_y
    classes.join(' ')
  end
end
