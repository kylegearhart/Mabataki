struct Deck {
    var title: String = ""
    var cards: Array<Card> = Array<Card>()
    
    mutating func addCard(card: Card) {
        cards.append(card)
    }
    
}
