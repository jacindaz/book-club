class Review < ActiveRecord::Base
  validates :rating, presence: true, inclusion: { within: 1..5 }
  validates :body, presence: true, length: {
    minimum: 2,
    maximum: 300,
    tokenizer: lambda { |str| str.scan(/\w+/) },
    too_short: "Must have at least %{count} words.",
    too_long: "Must have less than %{count} words."
  }
  validates :book_id, presence: true,
            numericality: { integer: true }

  belongs_to :book
end
