require 'simple_checkout'

describe SimpleCheckout do
  let(:checkout) {SimpleCheckout.new}

  it "Shows the price of an item" do
    checkout.new_item
    expect(checkout.show_price).to be_a_kind_of(Integer)
  end

  it "Scans the items" do
    checkout.new_item
    expect(checkout.scan).to include(checkout.show_price)
  end

  it "Shows the total of all scanned items" do
    20.times { checkout.new_item }
    20.times { checkout.scan }
    expect(checkout.show_scanned).to be > 10
  end

  it "All the prices are formatted correctly (e.g. £00.00)" do

  end

end