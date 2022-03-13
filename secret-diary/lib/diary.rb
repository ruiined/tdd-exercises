require_relative "locked_diary_error"
class Diary
  attr_reader :locked

  def initialize
    @locked = true
    @entries = []
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry(entry)
    locked_diary_error
    @entries << entry
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