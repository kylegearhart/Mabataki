import XCTest

@testable import Mabataki

class CardTests: XCTestCase {
    
    func test_initializingCard_createsDeckWithAppropriateDefaults() {
        let card = Card()
    
        XCTAssert(card.front == "")
        XCTAssert(card.back == "")
    }
    
    func test_initializingCardWithFrontAndBackValues_setsValuesCorrectly() {
        let card = Card(front: "Front Text", back: "Back Text")
        
        XCTAssert(card.front == "Front Text")
        XCTAssert(card.back == "Back Text")
    }
    
}
