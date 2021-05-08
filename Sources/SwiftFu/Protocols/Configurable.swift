//
//  Configurable.swift
//  
//
//  Created by Leif on 3/15/21.
//

public protocol Configurable: AnyObject { }

public extension Configurable {
    @discardableResult
    func configure(configuration: (Self) -> Void) -> Self {
        configuration(self)
        
        return self
    }
}
