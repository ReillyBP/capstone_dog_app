class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.integer :age
      t.string :location
      t.boolean :vaccinations
      t.string :sex
      t.string :name
      t.string :image
      t.string :breeder

      t.timestamps
    end
  end
end
