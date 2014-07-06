FactoryGirl.define do

  sequence(:random_ranking) do |n|
    @ratings_array = (1..5).to_a.shuffle
    @ratings_array[n]
  end

  sequence(:random_year) do |n|
    @year_array = (1800..2014).to_a.shuffle
    @year_array[n]
  end

  factory :book do
    sequence(:title) {|n| "book title #{n}"}
    author "Book author"
    year { generate(:random_year)}
    description "sample description"
    category "Fiction"
  end

  factory :review do
    rating { generate(:random_ranking) }
    body "This review is really awesome"
    book
  end

end
