import Cocoa

var greeting = "Hello, playground"


class Node<Value> {
    let value: Value
    var next: Node?
    init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    var first: Node<Value>? {
        return head
    }
    
    var last: Node<Value>? {
        return tail
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var count: Int {
        var counter = 0
        var current = head
        
        while current != nil {
            counter += 1
            current = current?.next
        }
        return counter
    }
    
    func append(value: Value) {
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            tail?.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    func nodeAt(index: Int) -> Value? {
        assert(index >= 0, "Index cannot be less than 0")
        
        var counter = 0
        var currentNode = head
        
        while currentNode != nil {
            if counter == index {
                return currentNode?.value
            }
            counter += 1
            currentNode = currentNode?.next
        }
        return nil
    }
    
    func iterate() {
       var currentNode = head
        
        while currentNode != nil {
            print(currentNode?.value ?? "")
            currentNode = currentNode?.next
        }
    }
    
}


var lk = LinkedList<String>()
lk.append(value: "one")
lk.append(value: "two")
lk.append(value: "three")
lk.append(value: "four")
lk.iterate()
print(lk.count)





