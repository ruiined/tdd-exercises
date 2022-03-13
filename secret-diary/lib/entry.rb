require 'date'

class Entry
  attr_reader :title, :date

  def initialize(title, date)
    @title = title
    @date = Date.parse(date)
  end
end