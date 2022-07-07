class AddPointsDrivers < ActiveRecord::Migration[7.0]
  def change
    add_column :drivers, :points, :integer
  end
end
