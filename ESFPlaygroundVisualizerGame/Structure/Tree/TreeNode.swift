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
    public var weight: Int { children.count }
    
    public var parent: Tree?
    public var children: [TreeNode]
    
    var color: NSColor
    var position: (Int, Int)
    var sprite: SKSpriteNode { createSprite() }
    
    public init(key: Int,
                parent: Tree? = nil,
                children: [TreeNode] = [],
                color: NSColor = .blue,
                position: (Int, Int) = (1, 1)) {
        self.key = key
        self.parent = parent
        self.children = children
        self.color = color
        self.position = position
    }
    
    private func createSprite() -> SKSpriteNode {
        let sprite = SKSpriteNode(color: self.color, size: .init(width: 20, height: 20))
        sprite.position = CGPoint(x: self.position.0, y: self.position.1)
        sprite.name = "\(self.key)"
        return sprite
    }
}
