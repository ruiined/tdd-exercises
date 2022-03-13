require 'coin'

describe Coin do
  subject(:coin) { described_class.new }

  it "flips" do
    expect { coin.flip }.to_not raise_error
  end

  it "randomly returns heads" do
    srand(0)
    expect(coin.flip).to eq("heads")
  end

  it "randomly returns tails" do
    srand(1)
    expect(coin.flip).to eq("tails")
  end
end