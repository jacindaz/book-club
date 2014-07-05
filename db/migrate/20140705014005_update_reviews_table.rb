class UpdateReviewsTable < ActiveRecord::Migration
  def change
    add_column :reviews, :book_id, :integer, null: false
  end
end
