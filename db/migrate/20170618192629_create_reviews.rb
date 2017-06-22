class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :user_id
      t.integer :vote

      t.timestamps
    end
  end
end
