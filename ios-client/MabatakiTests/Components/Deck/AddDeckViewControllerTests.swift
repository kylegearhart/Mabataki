import XCTest
@testable import Mabataki

class AddDeckViewControllerTests: XCTestCase {
    var fakeRouter: FakeNavigationRouter!
    var addDeckViewController: AddDeckViewController!
    
    override func setUp() {
        fakeRouter = FakeNavigationRouter()
        addDeckViewController = AddDeckViewController(router: fakeRouter)
        addDeckViewController.view.setNeedsLayout()
    }
    
    func test_viewDidLoad_showsCloseButton() {
        XCTAssertEqual(addDeckViewController.navigationItem.leftBarButtonItem?.title, "Close")
    }
    
    func test_tappingCloseButton_informsRouterToDismissPresentedViewController() {
        let closeBarButtonItem = addDeckViewController.navigationItem.leftBarButtonItem!
        
        
        UIApplication.mab_tapNavBarButton(closeBarButtonItem)
        
        
        XCTAssertTrue(fakeRouter.dismissPresentedViewController_wasCalled)
    }
}
