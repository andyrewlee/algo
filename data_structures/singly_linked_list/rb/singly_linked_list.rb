require_relative 'singly_node'

class SinglyLinkedList
  attr_accessor :head

  def initialize
    @head = Node.new("head")
  end

  def find(element)
    current_node = @head
    current_node = current_node.next while current_node.element != element
    return current_node
  end

  def insert(new_element, element)
    new_node = Node.new(new_element)
    current = find(element)
    new_node.next = current.next
    current.next = new_node
  end

  def display
    current_node = @head
    while current_node.next != nil
      puts current_node.next.element
      current_node = current_node.next
    end
  end

  def find_previous(element)
    current_node = @head
    while current_node.next != nil && current_node.next.element != element
      current_node = current_node.next
    end
    return current_node
  end

  def remove(element)
    previous_node = find_previous(element)
    previous_node.next = previous_node.next.next if previous_node.next != nil
  end
end
