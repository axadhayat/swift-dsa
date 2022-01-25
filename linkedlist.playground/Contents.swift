import UIKit

class Node{
    var value:String!
    var next:Node?
    init(val:String , node:Node?) {
        self.value = val
        self.next = node
    }
}

class LinkedList{
    var firstNode:Node!
    
    init(node:Node) {
        firstNode = node
    }
    
    func add(node:Node){
        
        if firstNode.next == nil{
            firstNode.next = node
        }
        else{
            var currentNode:Node = firstNode
            
            while let nextNode = currentNode.next{
                currentNode = nextNode
            }
            currentNode.next = node
        }
    }
    
    func midNode() -> Node{
        var currentNode:Node = firstNode
        var midNode:Node = firstNode
        
        while let _ = currentNode.next , let _ = currentNode.next?.next{
            midNode = midNode.next!
            currentNode = (currentNode.next?.next)!
        }
        return midNode
    }
    
    func reverseList(){
        
        var prevNode: Node? = nil
        var currentNode: Node? = firstNode
        
        while let _ = currentNode{
            let nextHead = currentNode!.next
            currentNode!.next = prevNode
            prevNode = currentNode
            currentNode = nextHead
        }
        
        firstNode = prevNode
    }
}

