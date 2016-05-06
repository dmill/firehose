require "./linked_list_operations"
include LinkedListOperations

node = nil
15.times do |i|
  node = LinkedListNode.new(i, node)
end

infinite = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, infinite)
node3 = LinkedListNode.new(12, node2)
infinite.next_node = node3

puts "Stack Reverse List"
print_values(node)
puts "-------"
print_values(stack_reverse_list(node))
puts "\nMutation Reverse List"
print_values(node)
puts "-------"
print_values(mutate_reverse_list(node))
puts "\nInfinite Loop Check"
p infinite_linked_list?(infinite)
puts "-------"
p infinite_linked_list?(node)
