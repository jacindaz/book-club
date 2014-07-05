require 'rails_helper'

feature 'user creates a new book' do

  scenario 'user submits a new book successfully' do
    book = FactoryGirl.create(:book)
    visit new_book_path

    expect(page).to have_content book.title
    expect(page).to have_content book.author
    expect(page).to have_content book.year
  end

  scenario 'user submits a blank book' do
  end

  scenario 'user submits a duplicate book' do
  end

end
