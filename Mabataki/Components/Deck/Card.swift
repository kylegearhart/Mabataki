struct Card {

}

extension Card: Equatable {}

func ==(lhs: Card, rhs: Card) -> Bool {
    return true
}
