//
//  LinkedListGameScene.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/21/22.
//

import Foundation
import SpriteKit

public class LinkedListGameScene {
    func setupListForTest() -> LinkedList {
    let list = LinkedList()
    
    let p3 = Process(pid: 3, path: "third", args: [], child: nil)
    let p2 = Process(pid: 2, path: "second", args: [], child: nil)
    let p1 = Process(pid: 1, path: "first", args: [], child: p2)
    
    list.append(process: p1, color: .blue, position: (30, 30))
    list.append(process: p2, color: .red, position: (50, 50))
    list.append(process: p3, color: .yellow, position: (70, 70))
    
    return list
    }
    
    public func listView() {
        let list = setupListForTest()
        
        var sprites: [SKSpriteNode] = []
        var node = list.head
        while node != nil {
            let (sprite, next) = plot(node: node!)
            sprites.append(sprite)
            node = next
        }
        
//        return sprites
    }
    
    func plot(node: LinkedListNode) -> (sprite: SKSpriteNode,
                                        next: LinkedListNode?) {
        let sprite = SKSpriteNode(color: node.color, size: .init(width: 20, height: 20))
        sprite.position = CGPoint(x: node.position.0, y: node.position.1)
        sprite.name = node.value.path
//        addChild(sprite)
        
        return (sprite: sprite, next: node.next)
    }
}
