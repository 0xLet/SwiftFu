//
//  Assertable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Assertable { }

public extension Assertable {
    func assert(
        message: String? = nil,
        statement: (Self) -> Bool
    ) -> Self {
        guard let message = message else {
            Swift.assert(statement(self))
            return self
        }
        Swift.assert(statement(self), message)
        return self
    }
    
    func precondition(
        message: String? = nil,
        statement: (Self) -> Bool
    ) -> Self {
        guard let message = message else {
            Swift.precondition(statement(self))
            return self
        }
        Swift.precondition(statement(self), message)
        return self
    }
}
