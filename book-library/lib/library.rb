require 'book'

class Library
  def initialize
    @shelves = []
  end
  
  def add(book)
    @shelves << book
  end

  def list
    @shelves
  end

  def count_damaged
    @shelves.filter(&:damaged?).count
  end

  def list_by_author(author)
    p @shelves.select(&:author)
  end
end