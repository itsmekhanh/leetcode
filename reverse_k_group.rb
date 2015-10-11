# given a linked list, reverse the nodes of a linked list k at a time and
# return its modified list. If the number of nodes is not a multiple of k
# then left-out nodes in the end should remain as it is.

def reverse_k_group(head, k)

  if k <= 1
    return head
  end

  prev = nil
  working = head

  # check to make sure there are enough nodes
  runner = head
  count = 1
  
  while runner != nil do
    if count == k
      break
    end
    runner = runner.next
    count += 1
  end

  if count != k 
    return head 
  end

  while working != nil && k > 0 do
    nex = working.next
    working.next = prev

    if prev == nil
      tail = working
    end
    prev = working
    working = nex

    k -= 1
  end

  tail.next = reverse_k_group(working, k)
  return prev
end
