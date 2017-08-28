class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :city
      t.string :description
      t.string :photo
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
