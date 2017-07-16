class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.integer :dog_id
      t.integer :breeder_id
      t.integer :user_id

      t.timestamps
    end
  end
end
