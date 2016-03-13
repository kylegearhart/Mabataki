import XCTest

@testable import Mabataki

class CardTests: XCTestCase {
    
    func test_initializingCard_createsCardInstance() {
        let card = Card()
        
        XCTAssertNotNil(card)
    }
    
}
