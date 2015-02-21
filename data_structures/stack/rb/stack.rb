class Stack
  def initialize
    @data_store = []
    @top = 0
  end

  def push(item)
    @data_store[@top] = item
    @top += 1
  end

  def pop
    @top -= 1
    return @data_store[@top]
  end

  def display
    for i in 0...@top
      puts @data_store[i]
    end
  end
end
