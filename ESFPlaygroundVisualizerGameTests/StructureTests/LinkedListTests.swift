//
//  LinkedListTests.swift
//  ESFPlaygroundVisualizerGameTests
//
//  Created by Maggie Zirnhelt on 11/20/22.
//

import Foundation
import XCTest
@testable import ESFPlaygroundVisualizerGame

class LinkedListTests: XCTestCase {
    func testInit() {
        // Given / When
        let list = LinkedList()
        
        // Then
        XCTAssertNil(list.head)
        XCTAssertNil(list.first)
        XCTAssertNil(list.tail)
        XCTAssertNil(list.last)
        XCTAssertTrue(list.isEmpty)
        XCTAssertEqual(list.length, 0)
    }
    
    func testAppend() throws {
        // Given
        let list = LinkedList()
        let process = Process(pid: 9)
        let color = NSColor.green
        let position = (5, 8)
        
        // When
        list.append(process: process,
                    color: color,
                    position: position)
        
        // Then
        let head = try XCTUnwrap(list.head)
        XCTAssertEqual(head.value.pid, process.pid)
        XCTAssertEqual(head.color, color)
        XCTAssertEqual(head.position.0, position.0)
        XCTAssertEqual(head.position.1, position.1)
    }
    
    func testNodeAtIndex() {
        // Given
        
        // When
        
        // Then
    }
    
    func testRemove() {
        // Given
        
        // When
        
        // Then
    }
    
    func testRemoveAll() {
        // Given
        
        // When
        
        // Then
    }
}
