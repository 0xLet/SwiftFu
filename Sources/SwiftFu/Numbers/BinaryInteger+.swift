//
//  BinaryInteger+.swift
//  
//
//  Created by Leif on 5/6/21.
//

import Foundation

public extension BinaryInteger {
    func add(_ number: Self) -> Self {
        self + number
    }
    
    func subtract(_ number: Self) -> Self {
        self - number
    }
    
    func multiply(_ number: Self) -> Self {
        self * number
    }
    
    func divide(_ number: Self) -> Self {
        self / number
    }
    
    func power(_ number: Self) -> Self {
        Self(pow(Double(self), Double(number)))
    }
    
    func mod(_ number: Self) -> Self {
        self % number
    }
}
