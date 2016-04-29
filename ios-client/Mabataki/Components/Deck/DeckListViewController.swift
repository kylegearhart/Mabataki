import UIKit

class DeckListViewController: UIViewController {
    // MARK: Properties
    let router: Router

    // MARK: Initializers
    init(router: Router) {
        self.router = router
        
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "My Decks"

        configureNavigationBar()
        addSubviews()
        configureSubviews()
        addConstraints()
    }

    // MARK: View Setup
    private func configureNavigationBar() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Add Deck",
            style: .Plain,
            target: self,
            action: #selector(openAddDeckViewController)
        )
    }

    private func addSubviews() { }

    private func configureSubviews() { }

    private func addConstraints() { }


    // MARK: Actions
    @objc private func openAddDeckViewController() {
        router.showAddDeckViewController()
    }

}
