require 'rails_helper'

RSpec.describe "grids/new", :type => :view do
  before(:each) do
    assign(:grid, Grid.new(
      :height => 1,
      :width => 1,
      :start_x => 1,
      :start_y => 1,
      :stop_x => 1,
      :stop_y => 1,
      :goal_x => 1,
      :goal_y => 1
    ))
  end

  it "renders new grid form" do
    render

    assert_select "form[action=?][method=?]", grids_path, "post" do

      assert_select "input#grid_height[name=?]", "grid[height]"

      assert_select "input#grid_width[name=?]", "grid[width]"

      assert_select "input#grid_start_x[name=?]", "grid[start_x]"

      assert_select "input#grid_start_y[name=?]", "grid[start_y]"

      assert_select "input#grid_stop_x[name=?]", "grid[stop_x]"

      assert_select "input#grid_stop_y[name=?]", "grid[stop_y]"

      assert_select "input#grid_goal_x[name=?]", "grid[goal_x]"

      assert_select "input#grid_goal_y[name=?]", "grid[goal_y]"
    end
  end
end
