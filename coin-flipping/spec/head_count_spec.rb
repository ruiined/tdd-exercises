require 'head_count'

describe HeadCount do
  subject(:head_count) { described_class.new(coin_class) }
  let(:coin_class) { double :coin_class, new: heads }
  let(:heads) { double :head, flip: "heads" }

  it "keeps a score" do
    expect(head_count.score).to be_empty
  end

  it "adds a flip to the score" do
    head_count.flip_coin
    expect(head_count.score).to include(heads.flip)
  end

  it "can count the amount of heads" do
    10.times { head_count.flip_coin }
    expect(head_count.count_heads).to eq 10
  end

  it "can print a score" do
    10.times { head_count.flip_coin }
    expect(head_count.print_score).to be_an_instance_of(Array)
  end
end