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
    raise "The diary is locked" if @locked == true
    @entries << entry
  end

  def get_entries
    raise "The diary is locked" if @locked == true
    @entries.dup
  end
end