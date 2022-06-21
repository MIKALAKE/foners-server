class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :avatar_url
      t.string :description
      t.string :first_name
      t.string :last_name
      t.integer :race_number
      t.string :nickname
      t.references :constructor, null: false, foreign_key: true
      t.date :birth_date
      t.string :nationality
      t.integer :height

      t.timestamps
    end
  end
end
