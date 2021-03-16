//
//  Fuable.swift
//
//
//  Created by Leif on 3/15/21.
//

protocol Fuable: Printable, Modifiable,
                 Boolable, Functionable,
                 Tuplable, Assertable { }
protocol FuableClass: Fuable, Configurable { }

extension Optional {
    func replace(nilWith value: Wrapped) -> Wrapped {
        guard let self = self else {
            return value
        }
        
        return self
    }
}
