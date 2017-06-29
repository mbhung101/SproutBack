class CreateGardens < ActiveRecord::Migration[5.1]
  def change
    create_table :gardens do |t|
      t.integer :year
      t.belongs_to :user, foreign_key: true
      t.belongs_to :season, foreign_key: true
      t.timestamps
    end
  end
end
