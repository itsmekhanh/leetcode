#swaps the odd and even nodes in a linked list

def swap_pairs(head)
    current = head
    
    while current != nil && current.next != nil do
       nex = current.next
        
       if current == head
            head = nex;
        end
        
        temp = nex.next
        nex.next = current
        current.next = temp
        current = temp
    end
    return head
end
