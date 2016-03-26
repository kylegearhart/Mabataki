import XCTest

@testable import Mabataki

class DeckListViewControllerTests: XCTestCase {
    
    func test_viewDidLoad_showsAddDeckNavBarButtonItemOnRight() {
        let fakeNavigationRouter = FakeNavigationRouter()
        let deckListViewController = DeckListViewController(router: fakeNavigationRouter)
        
        
        deckListViewController.view.setNeedsLayout()
        
        
        let addDeckBarButtonItem = deckListViewController.navigationItem.rightBarButtonItem
        XCTAssertEqual(addDeckBarButtonItem?.title, "Add Deck")
    }
    
    func test_tappingAddDeckBarButtonItem_tellsRouterToShowAddDeckViewController() {
        let fakeNavigationRouter = FakeNavigationRouter()
        let deckListViewController = DeckListViewController(router: fakeNavigationRouter)
        deckListViewController.view.setNeedsLayout()
        let addDeckBarButtonItem = deckListViewController.navigationItem.rightBarButtonItem
        

        UIApplication.sharedApplication().sendAction(
            (addDeckBarButtonItem?.action)!,
            to: addDeckBarButtonItem?.target,
            from: self,
            forEvent: nil)
        
        
        XCTAssertEqual(fakeNavigationRouter.showAddDeckViewController_called, true)
    }
}
