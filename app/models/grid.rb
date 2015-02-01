class Grid < ActiveRecord::Base

  def take_step!
    return if finished
    possible_moves = find_possible_moves
    move = possible_moves[rand(possible_moves.length)]
    make_move(move)
    self.step = (step || 0) + 1
    save
  end

  def finished
    (pos_x == goal_x && pos_y == goal_y) || (pos_x == stop_x && pos_y == stop_y)
  end

  private

  def make_move(move)
    send("pos_#{move[:direction]}=", move[:pos])
  end

  def find_possible_moves
    moves = []
    moves << { direction: 'x', pos: pos_x - 1 } unless pos_x == 0
    moves << { direction: 'x', pos: pos_x + 1 } unless pos_x + 1 == width
    moves << { direction: 'y', pos: pos_y - 1 } unless pos_y == 0
    moves << { direction: 'y', pos: pos_y + 1 } unless pos_y + 1 == height
    moves
  end

end
