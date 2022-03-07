require 'book'

describe Book do
  let(:book) { described_class.new(title,author) }
  let(:title) { "Nineteen Eighty-Four" }
  let(:author) { "George Orwell" }

  it "has a title" do
    expect(book.title).to include title
  end

  it "has an author" do
    expect(book.author).to include author
  end

  it "knows if it is damaged" do 
    expect(book.damaged?).to be false
  end

  it "can be marked as damaged" do
    book.mark_as_damaged
    expect(book.damaged?).to be true
  end
end