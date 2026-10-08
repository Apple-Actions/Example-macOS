import ExampleKit
import XCTest

final class ExampleMacTests: XCTestCase {
    func testMessageUsesName() {
        XCTAssertEqual(Greeting.message(for: "Ada", count: 2), "Hello, Ada! Greeted 2 times.")
    }

    func testMessageSingular() {
        XCTAssertEqual(Greeting.message(for: "Ada", count: 1), "Hello, Ada! Greeted 1 time.")
    }

    func testMessageDefaultsBlankNameToWorld() {
        XCTAssertEqual(Greeting.message(for: "  ", count: 0), "Hello, World! Greeted 0 times.")
    }
}
