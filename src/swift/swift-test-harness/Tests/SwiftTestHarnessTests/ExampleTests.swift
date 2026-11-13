#if canImport(Testing)
import Testing
import Anstream

@Suite("Anstream Swift Export Tests")
struct AnstreamExportTests {
    @Test("Anstream swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Anstream swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Anstream

final class AnstreamExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Anstream swift module imported cleanly")
    }
}
#endif
