//
//  Tree.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation

public class Tree {
    // A binary search tree that converts from a sorted linked list
    
    var root: TreeNode?
    
    var isEmpty: Bool { root == nil }
    
    public init(root: TreeNode?) {
        self.root = root
    }
    
//    public func insert(node: TreeNode, key: Int) -> TreeNode {
//
//    }
    
    /*
     1) Get the Middle of the linked list and make it root.
     2) Recursively do same for the left half and right half.
            a) Get the middle of the left half and make it left child of the root
               created in step 1.
            b) Get the middle of right half and make it the right child of the
               root created in step 1.
     */
    
//    public static func transform(linkedList: LinkedList) -> Tree {
//        .init(root: .init(key: 1))
//    }
    
    /*
    public static func transform(linkedList: LinkedList) -> Tree {
        // base case when linkedList.length == 1
        guard linkedList.length >= 2 else { return Tree(root: linkedList.head!)  }
        
        // 1
        let rootIndex = linkedList.length / 2
        let rootNode = linkedList.nodeAt(index: rootIndex)
        
        // 2
        let leftLinkedList = LinkedList()
        leftLinkedList.head = linkedList.head
        leftLinkedList.tail = linkedList.nodeAt(index: rootIndex - 1)
        leftLinkedList.tail?.next = nil
        leftLinkedList.length = rootIndex - 1
//        let left = transform(linkedList: leftLinkedList)
        
        let rightLinkedList = LinkedList()
        rightLinkedList.head = linkedList.nodeAt(index: rootIndex + 1)
        rightLinkedList.tail = linkedList.tail
        rightLinkedList.head?.previous = nil
//        let right = transform(linkedList: rightLinkedList)
        
        // 2a and 2b
        let leftLinkedListRootIndex = leftLinkedList.length / 2
        let leftLinkedListRootNode = leftLinkedList.nodeAt(index: leftLinkedListRootIndex)
        let rightLinkedListRootIndex = rightLinkedList.length / 2
        let rightLinkedListRootNode = rightLinkedList.nodeAt(index: rightLinkedListRootIndex)
        rootNode?.previous = leftLinkedListRootNode
        rootNode?.next = rightLinkedListRootNode
        
        return Tree(root: rootNode)
    }
     */
}
