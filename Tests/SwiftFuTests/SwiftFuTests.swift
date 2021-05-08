import XCTest
@testable import SwiftFu

final class SwiftFuTests: XCTestCase {
    final class SomeClass: FuableClass {
        var value: String = "Init"
    }
    
    struct SomeStruct: Fuable {
        var value: String = "Init"
    }
    
    func testClassConfigure() {
        let some = SomeClass()
        
        some.configure { (obj) in
            obj.value = "Configured Value"
        }
        
        XCTAssertEqual(some.value, "Configured Value")
    }
    
    func testStructModify() {
        let some = SomeStruct().modify { (obj) in
            obj.value = "Modified Value"
        }
        
        XCTAssertEqual(some.value, "Modified Value")
    }
    
    func testClassBool() {
        let some = SomeClass()
        
        let boolean = some.configure { (obj) in
            obj.value = "Configured Value"
        }.bool { (obj) -> Bool in
            obj.value == "Configured Value"
        }
        
        XCTAssert(boolean)
    }
    
    func testClassFunction() {
        let some = SomeClass().modify { (obj) in
            obj.value = "Modified Value"
        }
        
        some.func { (obj) in
            obj.configure { $0.value = "New Value!" }
            
            XCTAssertEqual(obj.value, "New Value!")
        }
        
        _ = some.modify { (obj) in
            obj.value = "Modified Value"
        }
        
        XCTAssertEqual(some.value, "Modified Value")
    }
    
    func testStructFunction() {
        let some = SomeStruct().modify { (obj) in
            obj.value = "Modified Value"
        }
        
        some.func { (obj) in
            let modifiedObject = obj.modify(modification: { $0.value = "New Value!" })
            
            XCTAssertNotEqual(obj.value, "New Value!")
            XCTAssertEqual(modifiedObject.value, "New Value!")
        }
        
        XCTAssertEqual(some.value, "Modified Value")
    }
    
    func testClassChain() {
        SomeClass()
            .configure { (obj) in
                obj.value = "Configured Value"
            }
            .bool { (obj) -> Bool in
                obj.value == "Configured Value"
            }
            .func { bool in
                XCTAssert(bool)
            }
    }
    
    func testOptional() {
        var something: Data?
        
        something = something.modify(modification: { $0 = "Hello".data(using: .utf8) })
        
        XCTAssertNotNil(something)
        
        something
            .precondition(message: "Must have a value") { $0 != nil }
            .replace(nilWith: Data())
            .func { (data) in
                XCTAssertEqual(String(data: data, encoding: .utf8), "Hello")
            }
    }
    
    func testMath() {
        let int = 5
            .subtract(100)
            .add(5)
            .power(3)
        
        let float = Float.pi.multiply(2)
        let double = Double.pi.multiply(2)
        
        XCTAssertEqual(int, Int(pow(Double((5 - 100) + 5), Double(3))))
        XCTAssertEqual(float, Float.pi * 2)
        XCTAssertEqual(double, Double.pi * 2)
    }
}
