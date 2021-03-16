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
    
    func print(modifiedString: (Self) -> String) {
        Swift.print(modifiedString(self))
    }
}
