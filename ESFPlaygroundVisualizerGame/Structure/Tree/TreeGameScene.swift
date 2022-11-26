//
//  TreeGameScene.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/21/22.
//

import Foundation
import SpriteKit

public class TreeGameScene {
    func setupTree() -> Tree {
        let p4 = Process(pid: 4, path: "fourth", args: [])
        let p3 = Process(pid: 3, path: "third", args: [])
        let p2 = Process(pid: 2, path: "second", args: [])
        let p1 = Process(pid: 1, path: "first", args: [])
        
        let nodes: [TreeNode] = [.init(key: p1.pid, color: .blue, position: (30, 30)),
                                 .init(key: p2.pid, color: .red, position: (50, 50)),
                                 .init(key: p3.pid, color: .yellow, position: (70, 70)),
                                 .init(key: p4.pid, color: .yellow, position: (130, 130))
        ]
        
        let root = TreeNode(key: 0)
        for node in nodes {
            root.children.append(node)
        }
        
        return Tree(root: root)
    }
    
    public func treeView() {
        let tree = setupTree()
        
        // plot this node
        // set an arrow from parent to this node
        // call this funciton for each of the children
        // base case: stop when weight is 0 because that's a leaf node
    }
    
    func plot(node: TreeNode) -> (sprite: SKSpriteNode,
                                  next: TreeNode?) {
        let sprite = SKSpriteNode(color: node.color, size: .init(width: 20, height: 20))
        sprite.position = CGPoint(x: node.position.0, y: node.position.1)
        sprite.name = "\(node.key)"
//        addChild(sprite)
        
        return (sprite: sprite, next: node)
    }
}
