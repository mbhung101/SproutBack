class CreateGardenPatches < ActiveRecord::Migration[5.1]
  def change
    create_table :garden_patches do |t|

      t.timestamps
    end
  end
end
