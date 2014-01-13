class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :content
      t.integer :breed_id

      t.timestamps
    end
  end
end
