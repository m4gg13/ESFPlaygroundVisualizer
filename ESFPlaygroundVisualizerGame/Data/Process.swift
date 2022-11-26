//
//  Process.swift
//  ESFPlaygroundVisualizerGame
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation

public class Process {
    var pid: Int
    var path: String?
    var args: [String]?
    var child: Process?
    
    public init(pid: Int,
                path: String? = nil,
                args: [String]? = nil,
                child: Process? = nil) {
        self.pid = pid
        self.path = path
        self.args = args
        self.child = child
    }
}
