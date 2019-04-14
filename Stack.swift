import Foundation

class Node {
    let value:Int
    var next:Node?
    init(value: Int){
        self.value = value
    }
}

class Stack {
    var top: Node?
    func push(_ value: Int) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }

    func pop() -> Int? {
        let currentTop = top
        top = top?.next
        return currentTop?.value;
    }
}

let newStack = Stack()
newStack.push(1)
newStack.push(2)
newStack.push(3)

let firstPop = newStack.pop()
print(firstPop)

let secondPop = newStack.pop()
print(secondPop)

let thirdPop = newStack.pop()
print(thirdPop)
