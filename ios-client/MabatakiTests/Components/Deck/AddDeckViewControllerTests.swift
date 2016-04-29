import XCTest
@testable import Mabataki

class AddDeckViewControllerTests: XCTestCase {
    var fakeRouter: FakeNavigationRouter!
    var addDeckViewController: AddDeckViewController!
    
    override func setUp() {
        fakeRouter = FakeNavigationRouter()
        addDeckViewController = AddDeckViewController(router: fakeRouter)

        var window: UIWindow?
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.rootViewController = addDeckViewController
        window!.makeKeyAndVisible()

        addDeckViewController.view.setNeedsLayout()
    }
    
    func test_viewDidLoad_showsCloseButton() {
        XCTAssertEqual(addDeckViewController.navigationItem.leftBarButtonItem?.title, "Close")
    }

    func test_viewDidLoad_showsSaveNavigationBarButtonItem() {
        XCTAssertEqual(addDeckViewController.navigationItem.rightBarButtonItem?.title, "Save")
    }
    
    func test_tappingCloseButton_informsRouterToDismissPresentedViewController() {
        let closeBarButtonItem = addDeckViewController.navigationItem.leftBarButtonItem!
        
        
        UIApplication.mab_tapNavBarButton(closeBarButtonItem)

        
        XCTAssertTrue(fakeRouter.dismissPresentedViewController_wasCalled)
    }

    func test_viewDidLoad_showsTitleTextFieldHeaderLabel() {
        XCTAssertEqual(
            addDeckViewController.titleTextFieldHeaderLabel.text,
            "Title"
        )
    }

    func test_viewDidAppear_showsTitleEntryTextFieldAsFirstResponder() {
        NSRunLoop.mab_advance(by: 1)

        XCTAssertTrue(addDeckViewController.titleTextField.isFirstResponder())
    }

}
