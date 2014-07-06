class Book < ActiveRecord::Base
  validates :title, presence: true, uniqueness: { scope: :author }
  validates :author, presence: true, length: {
    minimum: 2,
    maximum: 6,
    tokenizer: lambda { |str| str.scan(/\w+/) },
    too_short: "Author must have at least %{count} words.",
    too_long: "Author must have less than %{count} words."
  }
  validates :year, presence: true, inclusion: { within: 1800..2014 }

  has_many :reviews
end
