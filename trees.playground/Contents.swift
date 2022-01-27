import UIKit

class Node<T : Comparable>{
    var value:T!
    var leftNode:Node?
    var rightNode:Node?
    init(_value:T){
        value = _value
    }
}

class Tree<T : Comparable>{
    var rootNode:Node<T>!

    init(_rootNode:Node<T>) {
        self.rootNode = _rootNode
    }
    func insert(parentNode:Node<T>!, node:Node<T>){
        
        if node.value < parentNode.value{
            if let leftNode = parentNode.leftNode{
                self.insert(parentNode: leftNode, node: node)
            }
            else{
                parentNode.leftNode = node
            }
        }
        else if node.value > parentNode.value{
            if let rightNode = parentNode.rightNode{
                self.insert(parentNode: rightNode, node: node)
            }
            else{
                parentNode.rightNode = node
            }
        }
    }
    
    func traverse(node:Node<T>?){
        
        guard let _ = node else { return }
        traverse(node: node?.leftNode)
        print(node?.value)
        traverse(node: node?.rightNode)
    }
}

var tree = Tree.init(_rootNode: Node.init(_value: 7))
tree.insert(parentNode: tree.rootNode, node:  Node.init(_value: 2))
tree.insert(parentNode: tree.rootNode, node:  Node.init(_value: 10))
tree.traverse(node: tree.rootNode)
