class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :city
      t.date :date
      t.string :cover_url
      t.string :description
      t.string :country

      t.timestamps
    end
  end
end
