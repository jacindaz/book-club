class CreateBookTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.integer :year, null: false
      t.text :description
      t.string :category
    end
  end
end
