//
//  Modifiable.swift
//  
//
//  Created by Leif on 3/15/21.
//

protocol Modifiable { }

extension Modifiable {
    @inlinable
    func modify(modification: (inout Self) -> Void) -> Self {
        var copy = self
        
        modification(&copy)
        
        return copy
    }
}
