class CreateJoinTableUsersDogs < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :dogs do |t|
      t.index [:user_id, :dog_id]
      t.index [:dog_id, :user_id]
    end
  end
end
