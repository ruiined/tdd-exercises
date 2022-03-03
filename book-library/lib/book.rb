class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @state = false
  end

  def mark_as_damaged
    @state = true
  end

  def damaged?
    @state
  end
end