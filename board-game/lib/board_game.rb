def roll(num= 1)
  num == 1 ? rand(1...6) : [rand(1...6)] * num
end