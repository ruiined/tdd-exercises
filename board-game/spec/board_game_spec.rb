require 'board_game'

describe "rolling a dice" do
  before { srand(3) }

  it 'can roll the dice' do
    expect { roll }.to_not raise_error
  end

  it 'gives a number between 1 and 6' do
    expect(roll).to be_between(1, 6)
  end

  it 'randomly picks a number' do
    expect(roll).to eq 3
  end

  it 'can roll any number of times at the same time' do
    expect { roll(5) }.to_not raise_error
  end

  it 'gives the result of each dice roll' do
    expect(roll(3)).to eq([3, 3, 3])
  end
end