class CreateYields < ActiveRecord::Migration[5.1]
  def change
    create_table :yields do |t|
      t.integer :weight
      t.string :harvested_on
      t.belongs_to :patch, foreign_key: true
      t.timestamps
    end
  end
end
