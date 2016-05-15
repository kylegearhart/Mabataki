import XCTest
import Nimble

@testable import Mabataki

class DeckListViewControllerTests: XCTestCase {
    
    func test_viewDidLoad_showsAddDeckNavBarButtonItemOnRight() {
        let fakeNavigationRouter = FakeNavigationRouter()
        let deckListViewController = DeckListViewController(router: fakeNavigationRouter)

        
        deckListViewController.view.setNeedsLayout()
        
        
        let addDeckBarButtonItem = deckListViewController.navigationItem.rightBarButtonItem
        expect(addDeckBarButtonItem?.title).to(equal("Add Deck"))
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


        expect(fakeNavigationRouter.showAddDeckViewController_called).to(beTrue())
    }
}
