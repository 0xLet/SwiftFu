//
//  Boolable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Boolable { }

public extension Boolable {
    func bool(statement: (Self) -> Bool) -> Bool {
        let result = statement(self)
        
        return result
    }
}
