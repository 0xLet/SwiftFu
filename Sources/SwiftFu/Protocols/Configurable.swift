//
//  Configurable.swift
//  
//
//  Created by Leif on 3/15/21.
//

protocol Configurable: class { }

extension Configurable {
    @discardableResult
    @inlinable
    func configure(configuration: (Self) -> Void) -> Self {
        configuration(self)
        
        return self
    }
}
