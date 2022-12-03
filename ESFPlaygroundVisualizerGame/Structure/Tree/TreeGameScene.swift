//
//  TreeGameScene.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/21/22.
//

import Foundation
import SpriteKit

class TreeGameScene: GameScene {
    func setupTree() -> Tree {
        let p4 = Process(pid: 4, path: "fourth", args: [])
        let p3 = Process(pid: 3, path: "third", args: [])
        let p2 = Process(pid: 2, path: "second", args: [])
        let p1 = Process(pid: 1, path: "first", args: [])
        
//        let nodes: [TreeNode] = [.init(key: p1.pid, color: .blue, position: (30, 30)),
//                                 .init(key: p2.pid, color: .red, position: (100, 100)),
//                                 .init(key: p3.pid, color: .yellow, position: (200, 200)),
//                                 .init(key: p4.pid, color: .purple, position: (330, 330))
//        ]
        
        let nodes: [TreeNode] = [.init(key: p1.pid, color: .blue),
                                 .init(key: p2.pid, color: .red),
                                 .init(key: p3.pid, color: .yellow),
                                 .init(key: p4.pid, color: .purple)]
        
        let root = TreeNode(key: 0)
        for node in nodes {
            root.children.append(node)
        }
        
        return Tree(root: root)
    }
}
