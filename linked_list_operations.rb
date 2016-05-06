require "./linked_list_node"
require "./stack"

module LinkedListOperations

  def stack_reverse_list(list)
    stack = Stack.new

    while list
      stack.push(list.value)
      list = list.next_node
    end

    stack.data
  end

  def mutate_reverse_list(list, previous = nil)
    original_next_node = list.next_node
    list.next_node = previous
    original_next_node.nil? ? list : mutate_reverse_list(original_next_node, list)
  end

  def infinite_linked_list?(list)
    tortoise, hare = list, list
    loop do
      2.times do
        hare = hare.next_node
        return false if hare.nil?
      end

      tortoise = tortoise.next_node
      return true if hare == tortoise
    end
  end

  def print_values(list_node)
    print "#{list_node.value} --> "
    if list_node.next_node.nil?
      print "nil\n"
      return
    else
      print_values(list_node.next_node)
    end
  end
end
