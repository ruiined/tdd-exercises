require 'notebook'

describe NoteBook do

  let(:notebook) { NoteBook.new }
  let(:note) { "This is my note" }
  let(:tag) { "Todo" }

  it "creates a text note" do
    expect(notebook.create(note)).to include note
  end

  it "keeps all the notes in a notebook" do
    notebook.create(note, tag)
    expect(notebook.pages[0]).to include(tag => note)
  end
  
  it "adds a tag to a note" do
    expect(notebook.create(note, tag)).to include tag
  end

  it "searches for a note with a specific tag" do
    notebook.create(note, tag)
    expect(notebook.search(tag)).to include note
  end
end