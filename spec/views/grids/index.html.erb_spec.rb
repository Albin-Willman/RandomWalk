require 'rails_helper'

RSpec.describe "grids/index", :type => :view do
  before(:each) do
    assign(:grids, [
      Grid.create!(
        :height => 1,
        :width => 2,
        :start_x => 3,
        :start_y => 4,
        :stop_x => 5,
        :stop_y => 6,
        :goal_x => 7,
        :goal_y => 8
      ),
      Grid.create!(
        :height => 1,
        :width => 2,
        :start_x => 3,
        :start_y => 4,
        :stop_x => 5,
        :stop_y => 6,
        :goal_x => 7,
        :goal_y => 8
      )
    ])
  end

  it "renders a list of grids" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
  end
end
