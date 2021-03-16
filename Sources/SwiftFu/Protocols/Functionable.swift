//
//  Functionable.swift
//  
//
//  Created by Leif on 3/15/21.
//

protocol Functionable { }

extension Functionable {
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
