//
//  Fuable.swift
//
//
//  Created by Leif on 3/15/21.
//

public protocol Fuable: Printable, Modifiable,
                 Boolable, Functionable,
                 Tuplable, Assertable { }
public protocol FuableClass: Fuable, Configurable { }

public extension Optional {
    func replace(nilWith value: Wrapped) -> Wrapped {
        guard let self = self else {
            return value
        }
        
        return self
    }
}
