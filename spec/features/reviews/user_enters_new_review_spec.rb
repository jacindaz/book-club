require 'rails_helper'

feature 'user creates a new review' do

  scenario 'user submits a new review successfully' do
    review = FactoryGirl.create(:review)
    book = FactoryGirl.create(:book)
    visit new_book_review_path(book)

    select review.rating, from: "Rating"
    fill_in "Your Review", with: review.body
    click_button "Submit Your Review"

    expect(page).to have_content "Review saved."
    expect(page).to have_content review.rating
    expect(page).to have_content review.body
  end

  scenario 'user submits a blank review' do
    book = FactoryGirl.create(:book)
    visit new_book_review_path(book)
    click_button "Submit Your Review"
    expect(page).to have_content "can't be blank"
  end

  # scenario 'user submits a duplicate review' do
  #   review = FactoryGirl.create(:review)
  #   book = FactoryGirl.create(:book)
  #   review2 = review

  #   visit new_book_review_path(book)

  #   select review.rating, from: "Rating"
  #   fill_in "Your Review", with: review.body
  #   click_button "Submit Your Review"

  #   select review2.rating, from: "Rating"
  #   fill_in "Your Review", with: review2.body
  #   click_button "Submit Your Review"

  #   expect(page).to_not have_content "Review saved."
  #   expect(page).to have_content "already been taken"
  # end

end
