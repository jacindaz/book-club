FactoryGirl.define do

  sequence(:random_ranking) do |n|
    @ratings_array = (1..5).to_a_.shuffle
    @ratings_array[n]
  end

  factory :book do
    title "book title"
    author "book author"
    year 2014
    description "book description"
    category "book category"
    # sequence(:title) {|n| "book title #{n}"}
    # author "Book author"
    # sequence(:year) {|n| n + 1 }
    # description "sample description"
    # category "Fiction"
  end

  factory :review do
    rating { generate(:random_ranking) }
    body "This review is really awesome"
    book
  end

end
