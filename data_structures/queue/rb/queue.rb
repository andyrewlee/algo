class Queue
  def initialize
    @data_store = []
    @back = 0
  end

  def enqueue(item)
    @data_store[@back] = item
    @back += 1
  end

  def dequeue
    output = @data_store[0]
    for i in 1...@back
      @data_store[i - 1] = @data_store[i]
    end
    @back -= 1
    return output
  end

  def display
    for i in 0...@back
      puts @data_store[i]
    end
  end
end
