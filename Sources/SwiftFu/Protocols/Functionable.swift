//
//  Functionable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Functionable { }

public extension Functionable {
    @inlinable
    func `func`(closure: (Self) -> Void) {
        closure(self)
    }
    
    @inlinable
    func `func`<Output>(closure: (Self) -> Output) -> Output {
        let output = closure(self)
        
        return output
    }
}
