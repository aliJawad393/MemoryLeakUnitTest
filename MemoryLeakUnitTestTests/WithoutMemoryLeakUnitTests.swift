
import XCTest
@testable import MemoryLeakUnitTest

class WithoutMemoryLeakUnitTests: XCTestCase {

    override func tearDown() {
        super.tearDown()
        XCTAssertNil(weakReference)

    }

    weak var weakReference: WithoutMemoryLeak?
    
    func testMemoryLeak() throws {
        let sut = WithoutMemoryLeak()
        weakReference = sut
        XCTAssertNotNil(weakReference)

    }

}
