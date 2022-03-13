require 'diary'

describe Diary do
  subject(:diary) {described_class.new(new_entry)}
  let(:new_entry) { double :new_entry, new: true, title: "title", date: "date" }

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
    expect { diary.add_entry(new_entry.title, new_entry.date) }.to_not raise_error
  end

  it "gets the entries" do 
    diary.unlock
    diary.add_entry(new_entry.title, new_entry.date)
    expect { diary.get_entries }.to_not raise_error
  end

  it "raises an error when you try to add an entry to a locked diary" do
    expect { diary.add_entry(new_entry.title, new_entry.date) }.to raise_error("The diary is locked")
  end

  it "raises an error when you try to get entries from a locked diary" do
    expect { diary.get_entries }.to raise_error("The diary is locked")
  end
end