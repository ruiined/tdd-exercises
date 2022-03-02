class NoteBook
  attr_reader :pages
  
  def initialize
    @pages = []
  end

  def create(note, tag = "General")
    @pages << { tag => note }
    "#{note}, #{tag}"
  end

  def search(tag)
    @pages.map {|note| note[tag] }
  end
end