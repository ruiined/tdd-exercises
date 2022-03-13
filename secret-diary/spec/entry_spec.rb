require 'entry'

describe Entry do
  subject(:entry) { described_class.new("Hello", "13th March 2022") }

  it "creates an entry with a title" do
    expect(entry.title).to eq "Hello"
  end

  it "creates an entry wih a date" do
    expect(entry.date).to be_instance_of(Date)
  end
end