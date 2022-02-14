//
//  Stack.swift
//  swift-data-structures
//
//  Created by Ronaldo Andre Vargas Huaman on 9/02/22.
//

import Foundation

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
    public func getElemnts() -> [T] {
        return array
    }
}
