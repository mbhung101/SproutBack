class CreateAlerts < ActiveRecord::Migration[5.1]
  def change
    create_table :alerts do |t|
      t.text :message
      t.string :priority
      t.string :date
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
