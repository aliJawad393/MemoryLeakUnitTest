
import XCTest
@testable import MemoryLeakUnitTest

class WithMemoryLeakUnitTests: XCTestCase {

    weak var weakReference: WithMemoryLeak?

    override func tearDown() {
        super.tearDown()
        XCTAssertNil(weakReference)

    }

    func testMemoryLeak() throws {
        let sut = WithMemoryLeak()
        weakReference = sut
        XCTAssertNotNil(weakReference)
    }
    
}
