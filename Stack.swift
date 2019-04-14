import Foundation

class Node<T> {
    let value:T
    var next:Node?
    init(value: T){
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }

    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value;
    }

     func peek() -> T? {
        return top?.value;
    }
}

struct User {
    let name: String
    let userName: String
}

let userStack = Stack<User>()
let user1 = User(name: "Sheeyam", userName: "@sheeyams")
let user2 = User(name: "James", userName: "@james")
userStack.push(user1)
userStack.push(user2)

let userPopOne = userStack.pop()
print(userPopOne?.name)
print(userPopOne?.userName)

let newStack = Stack<Int>()
newStack.push(1)
newStack.push(2)
newStack.push(3)

let peek = newStack.peek()
print(peek)

let firstPop = newStack.pop()
print(firstPop)

let secondPop = newStack.pop()
print(secondPop)

let thirdPop = newStack.pop()
print(thirdPop)
