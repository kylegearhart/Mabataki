import XCTest

@testable import Mabataki

class DeckTests: XCTestCase {

    func test_initializeDeck_createsDeckWithAppropriateDefaults() {
        let deck = Deck()

        XCTAssert(deck.title == "")
        XCTAssert(deck.cards == [])
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

    func test_getCardAtIndexOutOfBounds_returnsNoCard() {
        let deck = Deck()

        let secondCard = deck.cardAtIndex(1)

        XCTAssertNil(secondCard)
    }

    func test_getCardAtIndexZero_givesFirstCard() {
        var deck = Deck()
        let firstCard = Card(front: "First", back: "First")
        let secondCard = Card(front: "Second", back: "Second")

        deck.addCard(firstCard)
        deck.addCard(secondCard)

        XCTAssert(deck.cardAtIndex(0)! == firstCard)
    }

    func test_getCardAtIndexFour_givesFifthCard() {
        var deck = Deck()
        let firstCard = Card(front: "First", back: "First")
        let secondCard = Card(front: "Second", back: "Second")
        let thirdCard = Card(front: "Third", back: "Third")
        let fourthCard = Card(front: "Fourth", back: "Fourth")
        let fifthCard = Card(front: "Fifth", back: "Fifth")

        deck.addCard(firstCard)
        deck.addCard(secondCard)
        deck.addCard(thirdCard)
        deck.addCard(fourthCard)
        deck.addCard(fifthCard)

        XCTAssert(deck.cardAtIndex(4)! == fifthCard)
    }
}
