class CreateSponsors < ActiveRecord::Migration[7.0]
  def change
    create_table :sponsors do |t|
      t.references :constructor, null: false, foreign_key: true
      t.string :name
      t.string :logo_url

      t.timestamps
    end
  end
end
