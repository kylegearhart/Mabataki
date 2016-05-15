import XCTest
import Nimble
@testable import Mabataki

class AddDeckViewControllerTests: XCTestCase {
    var fakeRouter: FakeNavigationRouter!
    var fakeDeckRepository: FakeDeckRepository!
    var addDeckViewController: AddDeckViewController!
    
    override func setUp() {
        fakeRouter = FakeNavigationRouter()
        fakeDeckRepository = FakeDeckRepository()
        addDeckViewController = AddDeckViewController(
            router: fakeRouter,
            deckRepository: fakeDeckRepository
        )

        var window: UIWindow?
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.rootViewController = addDeckViewController
        window!.makeKeyAndVisible()

        addDeckViewController.view.setNeedsLayout()
    }
    
    func test_viewDidLoad_showsCloseButton() {
        expect(self.addDeckViewController.navigationItem.leftBarButtonItem?.title).to(equal("Close"))
    }
    
    func test_tappingCloseButton_informsRouterToDismissPresentedViewController() {
        let closeBarButtonItem = addDeckViewController.navigationItem.leftBarButtonItem!
        
        
        UIApplication.mab_tapNavBarButton(closeBarButtonItem)


        expect(self.fakeRouter.dismissPresentedViewController_wasCalled).to(beTrue())
    }

    func test_viewDidLoad_showsSaveNavigationBarButtonItemOnRight() {
        expect(self.addDeckViewController.navigationItem.rightBarButtonItem?.title).to(equal("Save"))
    }

    func test_tappingSaveBarButtonItem_savesDeckWithEnteredTitle() {
        let saveBarButtonItem = addDeckViewController.navigationItem.rightBarButtonItem!
        let enteredTitle = "Title"


        addDeckViewController.titleTextField.text = enteredTitle
        UIApplication.mab_tapNavBarButton(saveBarButtonItem)


        expect(self.fakeDeckRepository.createDeck_wasCalled).to(beTrue())
        expect(self.fakeDeckRepository.createDeck_arg).to(equal(enteredTitle))
    }

    func test_tappingSaveBarButtonItem_dismissesAddDeckViewControllerScreen() {
        let saveBarButtonItem = addDeckViewController.navigationItem.rightBarButtonItem!


        UIApplication.mab_tapNavBarButton(saveBarButtonItem)


        expect(self.fakeRouter.dismissPresentedViewController_wasCalled).to(beTrue())
    }

    func test_viewDidLoad_showsTitleTextFieldHeaderLabel() {
        expect(self.addDeckViewController.titleTextFieldHeaderLabel.text).to(equal("Title"))
    }

    func test_viewDidAppear_showsTitleEntryTextFieldAsFirstResponder() {
        NSRunLoop.mab_advance(by: 1)


        expect(self.addDeckViewController.titleTextField.isFirstResponder()).to(beTrue())
    }
}
