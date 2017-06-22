class CreateWishlistItems < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlist_items do |t|
      t.integer :user_id
      t.string :item_name
      t.string :item_type
      t.string :URL

      t.timestamps
    end
  end
end
