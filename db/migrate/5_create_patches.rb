class CreatePatches < ActiveRecord::Migration[5.1]
  def change
    create_table :patches do |t|
      t.string :plant
      t.integer :number
      t.string :fertilizer
      t.integer :spacing
      t.string :planted_on
      t.integer :age
      t.string :water
      t.text :notes
      t.string :sunlight
      t.integer :total_yield
      t.string :substrate
      t.integer :seed_depth
      t.belongs_to :garden, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
