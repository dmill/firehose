require "./linked_list_node"

class Stack

  attr_reader :data

  def initialize
    @data = nil
  end

  def push(element)
    @data = LinkedListNode.new(element, @data)
  end

  def pop
    value = @data.value
    @data = @data.next_node
    value
  end
end
