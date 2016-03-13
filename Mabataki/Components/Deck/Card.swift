struct Card {
    var front: String = ""
    var back: String = ""
}

extension Card: Equatable {}

func ==(lhs: Card, rhs: Card) -> Bool {
    return true
}
