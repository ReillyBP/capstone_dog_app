class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :dog_id
      t.integer :breeder_id

      t.timestamps
    end
  end
end
