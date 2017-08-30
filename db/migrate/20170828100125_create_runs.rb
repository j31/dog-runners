class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.references :dog, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :status, default: 0
      t.datetime :appointment
      t.integer :duration
      t.decimal :price
      t.string :note
      t.references :park, foreign_key: true

      t.timestamps
    end
  end
end
