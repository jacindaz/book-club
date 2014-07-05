require 'rails_helper'

feature 'user views list of all books' do

  scenario 'user views list of all books' do
    books = FactoryGirl.create_list(:book, 3)
    visit books_path

    books.each do |book|
      expect(page).to have_content book.title
      expect(page).to have_content book.author
      expect(page).to have_content book.year
    end
  end

end
