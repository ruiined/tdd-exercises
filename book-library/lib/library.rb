require_relative 'book'

class Library
  def initialize
    @shelves = []
  end
  
  def add(title, author, damaged = false)
    book = Book.new(title, author)
    book.mark_as_damaged if damaged == true
    @shelves << book
  end

  def list
    @shelves
  end

  def count_damaged
    @shelves.select { |book| book.damaged? }.count
  end

  def list_by_author(author)
    @shelves.select { |book| book.author == author }
  end
end