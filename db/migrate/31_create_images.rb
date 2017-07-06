class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :url
      t.belongs_to :patch, foreign_key: true
      t.timestamps
    end
  end
end
