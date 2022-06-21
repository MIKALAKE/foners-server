class CreateConstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :constructors do |t|
      t.string :name
      t.string :description
      t.string :logo_url
      t.string :cover_url
      t.integer :first_apparence
      t.string :origins
      t.integer :titles

      t.timestamps
    end
  end
end
