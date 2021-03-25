//
//  SwitchTests.swift
//
//
//  Created by Zach Eriksen on 7/7/20.
//

import XCTest
@testable import SwiftFu

final class SwitchTests: XCTestCase {
    
    func test_switchmap() {
        let value = "qwerty"
        
        let switchedValue = switchmap(
            value: value,
            cases: [
                0: false,
                3.14: false,
                "qwerty": true
            ],
            defaultCase: nil
        )
        
        XCTAssertEqual(switchedValue, true)
    }
    
    func test_switcheach() {
        enum Example {
            case a, b, c, d
        }
        
        let value: Example = .c
        
        switcheach(
            value: value,
            cases: [
                .a: {
                    XCTFail()
                },
                .b: {
                    XCTFail()
                }
            ],
            defaultCase:  {
                XCTAssert(true)
            }
        )
    }
    
    func test_switchmapArray() {
        let list = [1, 2, 3]
        
        let switchedList = list.switchmap(
            cases: [
                0: "zero",
                1: "one",
                2: "two",
                3: "three"
            ],
            defaultCase: "Nil"
        )
        
        XCTAssertEqual(switchedList, ["one", "two", "three"])
    }
    
    func test_switcheachArray() {
        let list = [1, 2, 3]
        var count = 0
        
        list.switcheach(
            cases: [
                0: { count += 10 },
                1: { count += 20 },
                2: { count += 30 },
                3: { count += 40 }
            ],
            defaultCase: { count = -1 }
        )
        
        XCTAssertEqual(count, 90)
    }
    
    func test_switchmapString() {
        let list = "123"
        
        let switchedList = list.switchmap(
            cases: [
                "0": "zero",
                "1": "one",
                "2": "two",
                "3": "three"
            ],
            defaultCase: "Nil"
        )
        
        XCTAssertEqual(switchedList, ["one", "two", "three"])
    }
    
    
    static var allTests = [
        ("test_switchin", test_switchmap),
        ("test_switchinClosure", test_switcheach),
        ("test_switchinArray", test_switchmapArray),
        ("test_switcheachArray", test_switcheachArray),
        ("test_switchinString", test_switchmapString)
    ]
}
