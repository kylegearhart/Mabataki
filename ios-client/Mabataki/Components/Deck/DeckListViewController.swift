import UIKit

class DeckListViewController: UIViewController {
    let router: Router
    
    init(router: Router) {
        self.router = router
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "My Decks"

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Add Deck",
            style: .Plain,
            target: self,
            action: Selector("openAddDeckViewController")
        )
    }
    
    func openAddDeckViewController() {
        router.showAddDeckViewController()
    }

}
