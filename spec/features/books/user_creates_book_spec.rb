require 'rails_helper'

feature 'user creates a new book' do

  scenario 'user submits a new book successfully' do
    book = FactoryGirl.create(:book)
    visit new_book_path

    fill_in "Title", with: book.title
    fill_in "Author", with: book.author
    fill_in "Year", with: book.year
    click_button "Submit New Book"

    expect(page).to have_content "Book saved."
    expect(page).to have_content book.title
    expect(page).to have_content book.author
    expect(page).to have_content book.year
  end

  scenario 'user submits a blank book' do
    visit new_book_path
    click_button "Submit New Book"

    expect(page).to have_content "can't be blank"
  end

end
