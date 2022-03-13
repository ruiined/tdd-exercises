class LockedDiaryError
  def initialize
    raise "The diary is locked" if @locked == true
  end
end