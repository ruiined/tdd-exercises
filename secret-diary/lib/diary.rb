require_relative "entry"
class Diary
  attr_reader :locked

  def initialize(new_entry = Entry)
    @new_entry = new_entry
    @locked = true
    @entries = []
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry(title, date)
    locked_diary_error
    @entries << @new_entry.new(title, date)
  end

  def get_entries
    locked_diary_error
    @entries.dup
  end

  private

  def locked_diary_error
    raise "The diary is locked" if @locked == true
  end
end