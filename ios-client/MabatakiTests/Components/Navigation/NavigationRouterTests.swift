import XCTest
@testable import Mabataki

class NavigationRouterTests: XCTestCase {
    var navigationRouter: NavigationRouter!
    var navigationController: UINavigationController!
    
    override func setUp() {
        navigationController = UINavigationController()
        navigationRouter = NavigationRouter(navigationController: navigationController)
        
        var window: UIWindow?
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
    }
    
    func test_showDeckListScreen_pushesDeckListViewControllerToNavigationController() {
        navigationRouter.showDeckListViewController()
        
        
        XCTAssert(navigationController.topViewController!.isKindOfClass(DeckListViewController))
    }
    
    func test_showAddDeckScreen_presentsAddDeckViewControllerWithNavigationController() {
        navigationRouter.showAddDeckViewController()
        
        
        let presentedNavigationController = navigationController.presentedViewController as! UINavigationController
        XCTAssert(presentedNavigationController.viewControllers[0].isKindOfClass(AddDeckViewController))
    }
    
    func test_dismissPresentedViewController_dismissedCurrentlyPresentedViewController() {
        navigationController.pushViewController(
            UIViewController(),
            animated: false
        )
        navigationController.presentViewController(
            UIViewController(),
            animated: false,
            completion: nil
        )
        XCTAssertNotNil(navigationController.presentedViewController)
        
        
        navigationRouter.dismissPresentedViewController()
        NSRunLoop.mab_advance(by: 1)
        
        
        XCTAssertNil(navigationController.presentedViewController)
    }
}