var Queue = require('./queue');

var queue = new Queue();

queue.enqueue("Bird");
queue.enqueue("Magic");
queue.enqueue("Jordan");
queue.enqueue("Kobe");
queue.enqueue("Shaq");
queue.display();

console.log("You can stop waiting Bird");
queue.dequeue();
queue.display();
