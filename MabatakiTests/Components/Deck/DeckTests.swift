import XCTest

@testable import Mabataki

class DeckTests: XCTestCase {

    func test_initializeDeck_createsDeckWithAppropriateDefaults() {
        let deck = Deck()

        XCTAssert(deck.title == "")
    }
}
