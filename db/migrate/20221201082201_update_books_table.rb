class UpdateBooksTable < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :user, foreign_key: true
  end
end
