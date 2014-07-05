# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.create(title: "Gone with the Wind",
            author: "Margaret Mitchell",
            year: 1936,
            description: "Gone with the Wind is a novel written by Margaret Mitchell, first published in 1936. The story is set in Clayton County, Georgia, and Atlanta during the American Civil War and Reconstruction era. It depicts the experiences of Scarlett O'Hara, the spoiled daughter of a well-to-do plantation owner, who must use every means at her disposal to come out of the poverty she finds herself in after Sherman's March to the Sea. A historical novel, the story is a Bildungsroman or coming-of-age story, with the title taken from a poem written by Ernest Dowson.",
            category: "Historical Fiction"
            )


Book.create(title: "The Great Gatsby",
            author: "F. Scott Fitzgerald",
            year: 1925,
            description: "The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional town of West Egg on prosperous Long Island in the summer of 1922.",
            category: "Drama")

Book.create(title: "To Kill a Mockingbird",
            author: "Harper Lee",
            year: 1960,
            description: "To Kill a Mockingbird is a novel by Harper Lee published in 1960. It was immediately successful, winning the Pulitzer Prize, and has become a classic of modern American literature. The plot and characters are loosely based on the author's observations of her family and neighbors, as well as on an event that occurred near her hometown in 1936, when she was 10 years old.",
            category: "Fiction")


Review.create(rating: 5,
              body: "Gone with the Wind became a staple read for me,
                      I absorbed the book, the film, and quote it all the time.
                      It's an all-time American classic!",
              book_id: 1)


