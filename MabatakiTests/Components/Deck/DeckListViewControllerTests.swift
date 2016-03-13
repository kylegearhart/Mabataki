import XCTest

@testable import Mabataki

class DeckListViewControllerTests: XCTestCase {
    
    func test_viewDidLoad_showsAddDeckNavBarButtonItemOnRight() {
        let deckListViewController = DeckListViewController()
        deckListViewController.view.setNeedsLayout()
        
        XCTAssert(deckListViewController.navigationItem.rightBarButtonItem?.title == "Add Deck")
    }
}
