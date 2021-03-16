//
//  Printable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Printable { }

public extension Printable {
    func print() {
        Swift.print(self)
    }
    
    func print(_ closure: (Self) -> String) {
        Swift.print(closure(self))
    }
}
