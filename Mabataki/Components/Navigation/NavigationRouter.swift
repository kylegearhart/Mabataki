import UIKit

protocol Router {
    func showDeckListViewController()
    func showAddDeckViewController()
}

class FakeNavigationRouter: Router {
    var showDeckListViewController_called = false
    func showDeckListViewController() {
        showDeckListViewController_called = true
    }
    
    var showAddDeckViewController_called = false
    func showAddDeckViewController() {
        showAddDeckViewController_called = true
    }
}

struct NavigationRouter: Router {
    let navigationController: UINavigationController
    
    func showDeckListViewController() {
        let deckListViewController = DeckListViewController(router: self)
        navigationController.pushViewController(deckListViewController, animated: true)
    }
    
    func showAddDeckViewController() {
        let addDeckViewController = AddDeckViewController()
        let addDeckNavigationController = UINavigationController()
        addDeckNavigationController.setViewControllers([addDeckViewController], animated: true)
        
        navigationController.presentViewController(
            addDeckNavigationController,
            animated: true,
            completion: nil
        )
    }
}