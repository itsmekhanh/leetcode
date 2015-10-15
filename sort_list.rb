# Sort a singly linked list using constant space and in O(nlogn) time

require_relative "classes/list_node.rb"

def sort_list(head)
  if head.next.nil?
    return head
  end
  
  w = head
  r = head
  prev = nil

  # find the midpoint
  while r != nil && r.next != nil do
    r = r.next.next
    prev = w
    w = w.next
  end

  # list is now split in two
  prev.next = nil

  l = sort_list(head)
  r = sort_list(w)

  merged = nil
  tail = nil

  while l != nil && r != nil do
    node = ListNode.new(0)
    
    if r.val < l.val
      node.val = r.val
      r = r.next
    else
      node.val = l.val
      l = l.next
    end

    if merged.nil?
      merged = node
      tail = merged
    else
      tail.next = node
      tail = node
    end
  end

  while l != nil do
    node = ListNode.new(l.val)
    tail.next = node
    tail = node
    l = l.next
  end

  while r != nil do
    node = ListNode.new(r.val)
    tail.next = node
    tail = node
    r = r.next
  end

  return merged
end

head = ListNode.new(5)
a = ListNode.new(4)
b = ListNode.new(3)
c = ListNode.new(2)
d = ListNode.new(1)

c.next = d
b.next = c
a.next = b
head.next = a

sorted = sort_list(head)

puts sorted.next.next.val
