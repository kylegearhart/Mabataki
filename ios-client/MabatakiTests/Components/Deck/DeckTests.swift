import XCTest
import Nimble
@testable import Mabataki

class DeckTests: XCTestCase {

    func test_initializeDeck_createsDeckWithAppropriateDefaults() {
        let deck = Deck()


        expect(deck.title).to(equal(""))
        expect(deck.cards).to(equal([]))
    }
    
    func test_initializingDeckWithTitle_setsCorrectTitle() {
        let deck = Deck(title: "New Deck!", cards: [])


        expect(deck.title).to(equal("New Deck!"))
    }
    
    func test_addCard_addsCardToDeck() {
        var deck = Deck()


        let newCard = Card()
        deck.addCard(newCard)


        expect(deck.cards[0]).to(equal(newCard))
    }

    func test_getCardAtIndexOutOfBounds_returnsNoCard() {
        let deck = Deck()


        let secondCard = deck.cardAtIndex(1)


        expect(secondCard).to(beNil())
    }

    func test_getCardAtIndexZero_givesFirstCard() {
        var deck = Deck()
        let firstCard = Card(front: "First", back: "First")
        let secondCard = Card(front: "Second", back: "Second")


        deck.addCard(firstCard)
        deck.addCard(secondCard)


        expect(deck.cardAtIndex(0)!).to(equal(firstCard))
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


        expect(deck.cardAtIndex(4)!).to(equal(fifthCard))
    }
}
