import XCTest

@testable import Mabataki

class DeckTests: XCTestCase {

    func test_initializeDeck_createsDeckWithAppropriateDefaults() {
        let deck = Deck()

        XCTAssert(deck.title == "")
    }
    
    func test_initializingDeckWithTitle_setsCorrectTitle() {
        let deck = Deck(title: "New Deck!", cards: [])
        
        XCTAssert(deck.title == "New Deck!")
    }
    
    func test_addCard_addsCardToDeck() {
        var deck = Deck()
        
        let newCard = Card()
        deck.addCard(newCard)
        
        XCTAssert(deck.cards[0] == newCard)
    }
}
