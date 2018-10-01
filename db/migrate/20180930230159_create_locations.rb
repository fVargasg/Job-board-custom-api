class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.numeric :zipcode
      t.string :region

      t.timestamps
    end
  end
end
