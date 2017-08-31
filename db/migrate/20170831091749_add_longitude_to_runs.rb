class AddLongitudeToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :longitude, :float
  end
end
