/*
 Implementation of a LinkedList
--------------------------------
 Functions
 - Insert
 - Delete
 - Special Insert
 */

class Node {
    let value:Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    
    var head: Node?
    
    // Insert
    func insert(value: Int) {
        //Empty list
        if head == nil {
            head = Node(value: value, next: nil)
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = Node(value: value, next: nil)
        }
    }
    
    // Delete
    func delete(value: Int) {
        if head?.value == value {
            head = head?.next
        } else {
            var prev: Node?
            var current = head
            
            while current != nil && current?.value != value {
                prev = current
                current = current?.next
            }
            prev?.next = current?.next
        }
    }
    
    // Special Insert - Sort Insertion
    func insertInOrder(value: Int){
        if head == nil || head?.value ?? Int.min >= value {
            let newNode = Node(value: value, next: head)
            head = newNode
            return
        } else {
            var currentNode: Node? = head
            while currentNode?.next != nil && currentNode?.next?.value ?? Int.min < value {
                currentNode = currentNode?.next
            }
            currentNode?.next = Node(value: value, next: currentNode?.next)
        }
    }
    
    // Display List Items
    func displayListItems(){
        print("Display Print Items ->")
        
        var current = head
        while current != nil {
            print(current?.value ?? "")
            current = current?.next
        }
    }
}

//Instance of a list
let sampleLinkedList = LinkedList()

//Insert Numbers inside a LinkedList
sampleLinkedList.insert(value: 1)
sampleLinkedList.insert(value: 5)
sampleLinkedList.insert(value: 3)
sampleLinkedList.insertInOrder(value: 4)

//Delete Number from the LinkedList
sampleLinkedList.delete(value: 2)

//Display  List Items
sampleLinkedList.displayListItems()
