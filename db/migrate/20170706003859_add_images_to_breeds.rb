class AddImagesToBreeds < ActiveRecord::Migration[5.0]
  def change
    add_column :breeds, :image, :string
  end
end
