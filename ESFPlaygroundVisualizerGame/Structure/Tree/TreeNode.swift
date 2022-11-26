//
//  TreeNode.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation
import SpriteKit

public class TreeNode {
    public var key: Int
    public var weight: Int
    
    public var parent: Tree?
    public var children: [TreeNode]
    
    var color: NSColor
    var position: (Int, Int)
    
    public init(key: Int,
                weight: Int = 0,
                parent: Tree? = nil,
                children: [TreeNode] = [],
                color: NSColor = .blue,
                position: (Int, Int) = (1, 1)) {
        self.key = key
        self.weight = weight
        self.parent = parent
        self.children = children
        self.color = color
        self.position = position
    }
}
