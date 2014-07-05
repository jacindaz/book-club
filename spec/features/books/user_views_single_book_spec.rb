require 'rails_helper'

feature 'user views a single book' do

  scenario 'user views a single book' do
    book = FactoryGirl.create(:book)
    visit book_path(book)

    expect(page).to have_content book.title
    expect(page).to have_content book.author
    expect(page).to have_content book.year
    expect(page).to have_content book.description
  end

end
