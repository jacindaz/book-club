class Review < ActiveRecord::Base
  validates :rating, presence: true
  validates :body, presence: true
  validates :book_id, presence: true

  belongs_to :book
end
