class GridsController < ApplicationController
  before_action :set_grid, only: [:show, :edit, :update, :destroy]

  # GET /grids
  def index
    @grids = Grid.all
  end

  # GET /grids/1
  def show
  end

  # GET /grids/new
  def new
    @grid = Grid.new
  end

  # GET /grids/1/edit
  def edit
  end

  # POST /grids
  def create
    @grid = Grid.new(grid_params)

    if @grid.save
      redirect_to @grid, notice: 'Grid was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grids/1
  def update
    if @grid.update(grid_params)
      redirect_to @grid, notice: 'Grid was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grids/1
  def destroy
    @grid.destroy
    redirect_to grids_url, notice: 'Grid was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grid
      @grid = Grid.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grid_params
      params.require(:grid).permit(:height, :width, :start_x, :start_y, :stop_x, :stop_y, :goal_x, :goal_y)
    end
end
