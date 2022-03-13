require 'diary'

describe Diary do
  subject(:diary) {described_class.new}
  let(:entry) { "My diary entry" }

  it "locks the diary" do
    diary.unlock
    diary.lock
    expect(diary.locked).to be true
  end

  it "unlocks the diary" do
    diary.unlock
    expect(diary.locked).to be false
  end

  it "adds an entry" do
    diary.unlock
    expect(diary.add_entry(entry)).to eq ["My diary entry"]
  end

  it "gets the entries" do 
    diary.unlock
    diary.add_entry(entry)
    expect(diary.get_entries).to include "My diary entry"
  end

  it "raises an error when you try to add an entry to a locked diary" do
    expect { diary.add_entry(entry) }.to raise_error("The diary is locked")
  end

  it "raises an error when you try to get entries from a locked diary" do
    expect { diary.get_entries }.to raise_error("The diary is locked")
  end
end