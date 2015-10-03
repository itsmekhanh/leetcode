# you are given two linked lists representing two non-negative numbers.
# The digits are stored in reverse order and each of their nodes contain a 
# single digit. Add the two numbers and return it as a linked list.

require_relative "classes/list_node.rb"

def add_two_numbers(l1, l2)
  head = nil
  tail = nil
  carry = 0

  while !l1.nil? || !l2.nil? do
    sum = carry
    if !l1.nil?
      sum += l1.val
    end

    if !l2.nil?
      sum += l2.val
    end

    carry = if sum >= 10 then 1 else 0 end
    value = sum % 10

    node = ListNode.new(value)

    if head.nil?
      head = node
      tail = node
    else
      tail.next = node
      tail = node
    end
  end

  if carry > 0
    tail.next = ListNode.new(1)
  end
  return head
end
