//
//  Printable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Printable { }

public extension Printable {
    func sout() {
        print(self)
    }
    
    func sout(modifiedString: (Self) -> String) {
        print(modifiedString(self))
    }
}
