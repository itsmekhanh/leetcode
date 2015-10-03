# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  head = nil
  tail = nil

  while !l1.nil? && !l2.nil? do
    value = 0
    if l1.val < l2.val
      value = l1.val
      l1 = l1.next
    elsif
      value = l2.val
      l2 = l2.next
    end

    node = ListNode.new(value)
    if head.nil?
      head = node
      tail = head
    else
      tail.next = node
      tail = node
    end
  end

  while !l1.nil? do
    tail.next = ListNode.new(l1.val)
    tail = tail.next
    l1 = l1.next
  end

  while !l2.nil? do
    tail.next = ListNode.new(l2.val)
    tail = tail.next
    l2 = l2.next
  end

  return head
end
