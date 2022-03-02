require 'simple_checkout'

describe SimpleCheckout do
  let(:checkout) {SimpleCheckout.new}

  it "Shows the price of an item" do
    checkout.new_item
    expect(checkout.show_price).to be_a_kind_of(String)
  end

  it "Scans the items" do
    checkout.new_item
    expect(checkout.scan).to be_a_kind_of(Array)
  end

  it "Counts the total of all scanned items" do
    20.times { checkout.new_item }
    20.times { checkout.scan }
    expect { checkout.count_scanned }.to_not raise_error
  end

  it "Shows the prices in a correct format (e.g. £00.00)" do
    checkout.new_item
    expect(checkout.show_price).to match(/£\d*\d\.\d*\d/)
  end
end