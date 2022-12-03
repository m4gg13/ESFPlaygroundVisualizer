//
//  GameScene.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        treeView()
        
//        let test = TreeNode(key: 1337, color: .purple, position: (300, 300))
//        let sprite = SKSpriteNode(color: test.color, size: .init(width: 200, height: 200))
//        sprite.position = CGPoint(x: test.position.0, y: test.position.1)
//        sprite.name = "\(test.key)"
//        addChild(sprite)
//        plot(node: test)
        
//        listView()
    }
  
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    // MARK: Tree
    
    public func treeView() {
//        let tree = treeScene.setupTree()
        let tree = ProcessTreeFactory.makeTree(nodesCount: 7)

        guard let root = tree.root else { return }
        for node in root.children {
            do {
                try recursiveTreePlot(node: node, parent: root.sprite)
            } catch {
                print("Failed to recursively plot tree: \(error)")
            }
        }
    }
    
    func recursiveTreePlot(node: TreeNode, parent: SKSpriteNode) throws {
        // plot this node
        let childSprite = plot(node: node)
        
        // set an arrow from parent to this node
        setArrow(from: parent, to: childSprite)
        
        // base case: don't plot children when weight is 0 because that's a leaf node
        guard node.weight > 0 else { return }
        
        // call this function for each of the children
        try node.children.forEach { try recursiveTreePlot(node:$0, parent: childSprite) }
    }
    
    func plot(node: TreeNode) -> SKSpriteNode {
        let sprite = node.sprite
        addChild(sprite)
        return sprite
    }
    
    func setArrow(from parent: SKSpriteNode, to child: SKSpriteNode) {
        let arrow = SKSpriteNode(imageNamed: "rightArrow")
        arrow.size = CGSize(width: 30, height: 10)
        let y = parent.position.y + child.position.y
        arrow.position = CGPoint(x: parent.position.x + 55,
                                 y: y)
        addChild(arrow)
    }
}
