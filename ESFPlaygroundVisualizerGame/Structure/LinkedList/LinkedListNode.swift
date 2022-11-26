//
//  Node.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation
import SpriteKit

public class LinkedListNode {
    var next: LinkedListNode?
    weak var previous: LinkedListNode?

    var value: Process
//    var weight: Int
    var key: Int
    
    var color: NSColor
    var position: (Int, Int)
    
    public init(next: LinkedListNode? = nil,
                previous: LinkedListNode? = nil,
                value: Process = .init(pid: -1),
//                weight: Int,
                key: Int = 0,
                color: NSColor = .blue,
                position: (Int, Int) = (1, 1)) {
        self.next = next
        self.previous = previous
        self.value = value
//        self.weight = weight
        self.key = key
        self.color = color
        self.position = position
    }
}
