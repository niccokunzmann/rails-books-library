

class Memento
  attr_reader :backup
  def initialize
    @backup = {}
  end
end