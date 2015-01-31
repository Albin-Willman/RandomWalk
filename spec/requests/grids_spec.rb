require 'rails_helper'

RSpec.describe "Grids", :type => :request do
  describe "GET /grids" do
    it "works! (now write some real specs)" do
      get grids_path
      expect(response).to have_http_status(200)
    end
  end
end
