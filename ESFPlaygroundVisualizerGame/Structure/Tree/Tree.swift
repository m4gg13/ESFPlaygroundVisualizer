//
//  Tree.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation

public class Tree {
    var root: TreeNode?
    
    var isEmpty: Bool { root == nil }
    
    public init(root: TreeNode?) {
        self.root = root
    }
}
