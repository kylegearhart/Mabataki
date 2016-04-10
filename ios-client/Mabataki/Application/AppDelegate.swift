import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
       
        let navigationRouter = NavigationRouter(navigationController: UINavigationController())
        navigationRouter.showDeckListViewController()
        
        window?.rootViewController = navigationRouter.navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
    
}
