class AddDescriptionColumnToBreeds < ActiveRecord::Migration[5.0]
  def change
    add_column :breeds, :description, :string
  end
end
