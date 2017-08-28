class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :photo
      t.string :breed
      t.decimal :weight
      t.integer :age
      t.string :note

      t.timestamps
    end
  end
end
