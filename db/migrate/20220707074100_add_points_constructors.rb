class AddPointsConstructors < ActiveRecord::Migration[7.0]
  def change
    add_column :constructors, :points, :integer
  end
end
