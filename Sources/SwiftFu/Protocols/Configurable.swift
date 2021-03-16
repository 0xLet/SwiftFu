//
//  Configurable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Configurable: class { }

public extension Configurable {
    @discardableResult
    @inlinable
    func configure(configuration: (Self) -> Void) -> Self {
        configuration(self)
        
        return self
    }
}
