//
//  Modifiable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Modifiable { }

public extension Modifiable {
    @inlinable
    func modify(modification: (inout Self) -> Void) -> Self {
        var copy = self
        
        modification(&copy)
        
        return copy
    }
}
