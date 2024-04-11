import Cocoa

var greeting = "Hello, playground"

// class Node to crate a node

class Node {
    
    let val: Int
    var next: Node?
    
    init(val: Int, next: Node? = nil) {
        self.val = val
        self.next = next
    }
}


let head = Node(val: 1)
let first = Node(val: 0)
let second = Node(val: 0)
let third = Node(val: 0)

head.next = first
first.next = second
second.next = third



func binaryToDeciaml(_ head: Node?) ->Int {
    var curr = head
    var binaryStr = ""
    
    while curr != nil {
        
        guard let val = curr?.val else {
            return 0
        }
        binaryStr += String(val)
        curr = curr?.next
    }
    return Int(binaryStr, radix: 2)!
}


print(binaryToDeciaml(head))
