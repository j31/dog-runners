class AddLatitudeToRuns < ActiveRecord::Migration[5.1]
  def change
    add_column :runs, :latidude, :float
  end
end
