import XCTest
import Nimble

@testable import Mabataki

class CardTests: XCTestCase {
    
    func test_initializingCard_createsDeckWithAppropriateDefaults() {
        let card = Card()


        expect(card.front).to(equal(""))
        expect(card.back).to(equal(""))
    }
    
    func test_initializingCardWithFrontAndBackValues_setsValuesCorrectly() {
        let card = Card(front: "Front Text", back: "Back Text")

        
        expect(card.front).to(equal("Front Text"))
        expect(card.back).to(equal("Back Text"))
    }
}
