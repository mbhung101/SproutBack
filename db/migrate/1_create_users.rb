class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.string :city
      t.string :state
      t.string :username
      t.text :bio
      t.string :profilepic
      t.string :password
      t.timestamps
    end
  end
end
