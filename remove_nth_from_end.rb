# Given a linked list, remove the nth node from the end of the list and return
# its head.

require_relative "classes/list_node.rb"

def remove_nth_from_end(head, n)

  if head.next.nil? && n == 1
    return nil
  end

  runner = head
  walker = head
  prev = head

  while n > 1 do
    runner = runner.next
    n -= 1
  end

  while !runner.next.nil? do
    prev = walker
    walker = walker.next
    runner = runner.next
  end

  prev.next = walker.next
  return head
end
