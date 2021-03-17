//
//  Functionable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Functionable { }

public extension Functionable {
    func `func`(closure: (Self) -> Void) {
        closure(self)
    }
    
    func `func`<Output>(closure: (Self) -> Output) -> Output {
        let output = closure(self)
        
        return output
    }
}
