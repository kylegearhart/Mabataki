@testable import Mabataki

class FakeDeckRepository: DeckRepository {
    var createDeck_wasCalled = false
    var createDeck_arg = ""
    func createDeck(title: String) {
        createDeck_arg = title
        createDeck_wasCalled = true
    }
}