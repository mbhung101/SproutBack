class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.integer :year
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
