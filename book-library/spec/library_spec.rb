require 'library'

describe Library do
  let(:library) { Library.new }
  let(:book) { double :book, title: "Nineteen Eighty-Four", author: "George Orwell", damaged?: false }
  let(:damaged_book) { double :damaged_book, title: "Fahrenheit 451", author: "Ray Bradbury", damaged?: true}

  it "adds a book" do
    expect { library.add(book) }.to_not raise_error
  end

  it "lists all books" do
    5.times { library.add(book) }
    expect(library.list).to include book
  end

  it "counts damaged books" do
    7.times { library.add(book) }
    3.times { library.add(damaged_book) }
    expect(library.count_damaged).to eq 3
  end

  it "lists book titles by author" do
    library.add(book)
    library.add(damaged_book)
    expect(library.list_by_author(book.author)).to include book.title
  end
end