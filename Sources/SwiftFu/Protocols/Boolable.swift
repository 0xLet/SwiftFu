//
//  Boolable.swift
//  
//
//  Created by Leif on 3/15/21.
//

protocol Boolable { }

extension Boolable {
    @inlinable
    func bool(statement: (Self) -> Bool) -> Bool {
        let result = statement(self)
        
        return result
    }
}
