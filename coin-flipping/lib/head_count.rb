require_relative 'coin'

class HeadCount
  attr_reader :score

  def initialize(coin_class = Coin)
    @coin_class = coin_class
    @score = []
  end

  def flip_coin
    @score << @coin_class.new.flip
  end

  def count_heads
    (@score - ["tails"]).length
  end

  def count_tails
    (@score - ["heads"]).length
  end

  def print_score
    "Heads: #{count_heads}, Tails: #{count_tails}"
  end
end
