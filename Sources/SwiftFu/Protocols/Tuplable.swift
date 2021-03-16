//
//  Tuplable.swift
//  
//
//  Created by Leif on 3/15/21.
//

protocol Tuplable { }

extension Tuplable {
    func tuple<Value>(appending value: Value) -> (Self, Value) {
        (self, value)
    }
    
    func tuple<Value>(prepending value: Value) -> (Value, Self) {
        (value, self)
    }
}
