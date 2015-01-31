class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.integer :height
      t.integer :width
      t.integer :start_x
      t.integer :start_y
      t.integer :stop_x
      t.integer :stop_y
      t.integer :goal_x
      t.integer :goal_y

      t.timestamps null: false
    end
  end
end
