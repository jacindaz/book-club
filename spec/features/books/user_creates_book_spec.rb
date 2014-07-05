require 'rails_helper'

feature 'user creates a new book' do

  scenario 'user submits a new book successfully' do
    #book = FactoryGirl.create(:book)
    book = Book.create(title: "test book title",
                        author: "test book author",
                        year: 2012,
                        description: "test book description",
                        category: "test book category")
    visit new_book_path

    fill_in "Title", with: "test book title"
    fill_in "Author", with: "test book author"
    fill_in "Year", with: "test book year"
    click_button "Submit New Book"

    puts "============================================"
    puts "This is the book: #{book.title} (#{book.year} by #{book.author})"
    puts "============================================"

    expect(page).to have_content "Book saved."
    expect(page).to have_content "test book title"
    expect(page).to have_content "test book author"
    expect(page).to have_content "test book year"
  end

  scenario 'user submits a blank book' do
    visit new_book_path
    click_button "Submit New Book"

    expect(page).to have_content "can't be blank"
  end

  scenario 'user submits a duplicate book' do
    book = FactoryGirl.create(:book)
    visit new_book_path

    fill_in "Title", with: book.title
    fill_in "Author", with: book.author
    fill_in "Year", with: book.year
    click_button "Submit New Book"

    fill_in "Title", with: book.title
    fill_in "Author", with: book.author
    fill_in "Year", with: book.year
    click_button "Submit New Book"

    expect(page).to have_content "has already been taken"
  end

end
