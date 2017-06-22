class CreateBreeders < ActiveRecord::Migration[5.0]
  def change
    create_table :breeders do |t|
      t.string :name
      t.string :location
      t.string :price
      t.boolean :delivery
      t.string :delivery_type
      t.string :image
      t.string :past_litters

      t.timestamps
    end
  end
end
