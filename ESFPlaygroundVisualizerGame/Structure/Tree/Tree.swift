//
//  Tree.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation
import AppKit

public class Tree {
    var root: TreeNode?
    
    var isEmpty: Bool { root == nil }
    
    public init(root: TreeNode?) {
        self.root = root
    }
}

public class ProcessTreeFactory {
    private static var colors: [NSColor] = [.red, .green, .blue, .purple, .yellow, .brown]
    
    private static func makeNodes(root: TreeNode,
                   count: Int) -> [TreeNode] {
        var nodes: [TreeNode] = []
        for i in 0...count {
            nodes.append(makeNode(root: root, pid: i))
        }
        return nodes
    }
    
    private static func makeNode(root: TreeNode,
                  pid: Int) -> TreeNode {
        TreeNode(key: pid, color: colors.randomElement() ?? .black)
    }
    
    static func makeTree(nodesCount count: Int) -> Tree {
        let root = TreeNode(key: 0)
        let nodes = makeNodes(root: root, count: count)
        for node in nodes {
            root.children.append(node)
        }
        
        return Tree(root: root)
    }
}
