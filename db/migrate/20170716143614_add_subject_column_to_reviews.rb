class AddSubjectColumnToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :subject, :string
  end
end
