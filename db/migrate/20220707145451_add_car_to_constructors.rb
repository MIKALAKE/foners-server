class AddCarToConstructors < ActiveRecord::Migration[7.0]
  def change
    add_column :constructors, :car_url, :string
  end
end
