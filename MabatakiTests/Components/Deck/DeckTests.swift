import XCTest

@testable import Mabataki

class DeckTests: XCTestCase {

    func test_initializeDeck_createsDeckWithAppropriateDefaults() {
        let deck = Deck()

        XCTAssert(deck.title == "")
    }
    
    func test_initializingDeckWithTitle_setsCorrectTitle() {
        let deck = Deck(title: "New Deck!")
        
        XCTAssert(deck.title == "New Deck!")
    }
}
