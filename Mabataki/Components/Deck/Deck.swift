struct Deck {
    var title: String = ""
    var cards: Array<Card> = Array<Card>()
    
    mutating func addCard(card: Card) {
        cards.append(card)
    }
    
    func cardAtIndex(queryIndex: Int) -> Card? {
        guard queryIndex < cards.count else {
            return nil
        }

        return cards[queryIndex]
    }
}
