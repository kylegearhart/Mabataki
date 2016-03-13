import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let navController = UINavigationController(rootViewController: DeckListViewController())
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        
        return true
    }
    
}
