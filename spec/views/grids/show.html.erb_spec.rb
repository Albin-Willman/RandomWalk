require 'rails_helper'

RSpec.describe "grids/show", :type => :view do
  before(:each) do
    @grid = assign(:grid, Grid.create!(
      :height => 1,
      :width => 2,
      :start_x => 3,
      :start_y => 4,
      :stop_x => 5,
      :stop_y => 6,
      :goal_x => 7,
      :goal_y => 8
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
  end
end
