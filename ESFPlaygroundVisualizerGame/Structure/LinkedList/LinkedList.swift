//
//  File.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation
import SpriteKit

public class LinkedList {
    var head: LinkedListNode?
    var tail: LinkedListNode?
    
    var isEmpty: Bool { head == nil }
    var first: LinkedListNode? { head }
    var last: LinkedListNode? { tail }
    
    var length = 0
    
    public func append(process: Process,
                       color: NSColor = .blue,
                       position: (Int, Int) = (1, 1)) {
        let newNode = LinkedListNode(value: process,
//                           weight: 0,
                           color: color,
                           position: position)
        
        if let tailNode = tail {
            // if there's already a list going, tack newNode onto the end
            newNode.previous = tailNode
//            newNode.previous?.weight += 1
            
            tailNode.next = newNode
        } else {
            // otherwise start the list
            head = newNode
        }
        
        tail = newNode
        length += 1
    }
    
    public func nodeAt(index: Int) -> LinkedListNode? {
        guard index >= 0 else { return nil }
        
        var node = head
        var i = 0
        while node != nil {
            if i == index { return node }
            i += 1
            node = node?.next
        }
        
        return nil
    }
    
    public func remove(node: LinkedListNode) -> Process {
        let previous = node.previous
        let next = node.next
        
        if let previous = previous {
            previous.next = next
        } else {
            // if previous is nil, we have removed the first node in the list
            // do we want to update all of the weights? i don't think so
            head = next
        }
        next?.previous = previous
//        next?.weight -= 1
        
        if next == nil {
            // if next is nil, we have removed the last node in the list
            tail = previous
        }
        
        node.previous = nil
        node.next = nil
        length -= 1
        
        return node.value
    }
    
    public func removeAll() {
        head = nil
        tail = nil
        length = 0
    }
}
