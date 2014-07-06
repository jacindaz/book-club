require 'rails_helper'

feature 'user views reviews for a book' do

  scenario 'user views all reviews for a single book' do
    book = FactoryGirl.create(:book)
    reviews = FactoryGirl.create_list(:review, 3)

    reviews.each do |review|
      visit new_book_review_path(book)
      select review.rating, from: "Rating"
      fill_in "Your Review", with: review.body
      click_button "Submit Your Review"

      expect(page).to have_content review.rating
      expect(page).to have_content review.body
    end

  end

end
