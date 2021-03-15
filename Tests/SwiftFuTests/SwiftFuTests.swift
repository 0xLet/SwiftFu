import XCTest
@testable import SwiftFu

final class SwiftFuTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftFu().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
