import UIKit

struct NavigationRouter: Router {
    let navigationController: UINavigationController
    
    func showDeckListViewController() {
        let deckListViewController = DeckListViewController(router: self)
        navigationController.pushViewController(deckListViewController, animated: true)
    }
    
    func showAddDeckViewController() {
        let addDeckViewController = AddDeckViewController(
            router: self,
            deckRepository: PersistedDeckRepository()
        )
        let addDeckNavigationController = UINavigationController()
        addDeckNavigationController.setViewControllers(
            [addDeckViewController],
            animated: true
        )
        
        navigationController.presentViewController(
            addDeckNavigationController,
            animated: true,
            completion: nil
        )
    }
    
    func dismissPresentedViewController() {
        navigationController.dismissViewControllerAnimated(
            true,
            completion: nil
        )
    }
}