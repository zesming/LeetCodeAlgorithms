// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var resultNode = ListNode(0)
    guard l1 != nil && l2 != nil else {
        return nil
    }
    var point1 = l1!
    var point2 = l2!
    
    
    
    return resultNode
}

let a1 = [1, 2, 4]
let a2 = [1, 3, 4]

var node1 = ListNode(a1.first!)

for i in 1..<a1.count {
    let temp = ListNode(i)
    node1.next = temp
    node1 = temp
}

var node2 = ListNode(a2.first!)

for i in 1..<a2.count {
    let temp = ListNode(i)
    node2.next = temp
    node2 = temp
}

mergeTwoLists(node1, node2)
