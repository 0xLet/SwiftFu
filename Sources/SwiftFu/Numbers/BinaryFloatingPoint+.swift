//
//  BinaryFloatingPoint+.swift
//  
//
//  Created by Leif on 5/7/21.
//

import Foundation

extension BinaryFloatingPoint {
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
        self.truncatingRemainder(dividingBy: number)
    }
}
