class Grid < ActiveRecord::Base

  def take_step!
    return if finished
    direction = rand(2) == 1 ? 'x' : 'y'
    data = axis_data(direction)
    send("pos_#{direction}=", select_next_pos(data))
    step = (step || 0) + 1
    save
  end

  def finished
    (pos_x == goal_x && pos_y == goal_y) || (pos_x == stop_x && pos_y == stop_y)
  end

  private

  def select_next_pos(data)
    return data[:lower_limit] + 1 if data[:lower_limit] == data[:pos]
    return data[:upper_limit] - 1 if data[:upper_limit] == data[:pos]
    data[:pos] + rand(2)*2 - 1
  end

  def axis_data(axis)
    upper_limit = axis == 'x' ? width : height
    {
      lower_limit: 0,
      upper_limit: upper_limit-1,
      pos: send("pos_#{axis}")
    }
  end

end
