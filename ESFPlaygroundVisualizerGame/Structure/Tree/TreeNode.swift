//
//  TreeNode.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation
import SpriteKit

public class TreeNode {
    
    // the key is the process pid
    public var key: Int
    public var weight: Int { children.count }
    
    public var parent: Tree?
    public var children: [TreeNode]
    
    var color: NSColor
    var position: (x: Int, y: Int) { calculatePosition() }
    var sprite: SKSpriteNode { createSprite() }
    
    public init(key: Int,
                parent: Tree? = nil,
                children: [TreeNode] = [],
                color: NSColor = .blue) {
        self.key = key
        self.parent = parent
        self.children = children
        self.color = color
    }
    
    private func createSprite() -> SKSpriteNode {
        let sprite = SKSpriteNode(color: self.color, size: .init(width: 20, height: 20))
        sprite.position = CGPoint(x: self.position.0, y: self.position.1)
        sprite.name = "\(self.key)"
        return sprite
    }
    
    private func calculatePosition() -> (Int, Int) {
        guard let parent = parent?.root else { return (x: 10, y: 10) }
        return (x: parent.position.x + 30,
                y: parent.position.y + (key % 100) + 30)
    }
}
