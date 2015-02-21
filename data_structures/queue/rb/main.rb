require_relative 'queue'

queue = Queue.new

queue.enqueue("Bird")
queue.enqueue("Magic")
queue.enqueue("Jordan")
queue.enqueue("Kobe")
queue.enqueue("Shaq")
queue.display

puts "You can stop waiting Bird"
queue.dequeue
queue.display
