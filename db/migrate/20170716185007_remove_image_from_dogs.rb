class RemoveImageFromDogs < ActiveRecord::Migration[5.0]
  def change
    remove_column :dogs, :image, :string
    remove_column :breeders, :image, :string
  end
end
