class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.integer :temperature
      t.string :forecast
      t.belongs_to :season, foreign_key: true
      t.timestamps
    end
  end
end
