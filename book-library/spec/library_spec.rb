require 'library'

describe Library do
  let(:library) { described_class.new }
  let(:title) { double :title }
  let(:author) { double :author }
  let(:author_2) { double :author_2 }

  it "adds a book" do
    expect { library.add(title, author) }.to_not raise_error
  end

  it "lists all books" do
    5.times { library.add(title, author) }
    expect(library.list).to be_an_instance_of(Array)
  end

  it "counts damaged books" do
    7.times { library.add(title, author) }
    3.times { library.add(title, author, true) }
    expect(library.count_damaged).to eq 3
  end

  it "lists book titles by author" do
    library.add(title, author)
    library.add(title, author_2)
      expect(library.list_by_author(author_2)).to be_an_instance_of(Array)
  end
end