import UIKit

class AddDeckViewController: UIViewController {
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
        self.title = "Add Deck"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close",
            style: .Plain,
            target: self,
            action: #selector(dismissSelfAsPresentedViewController)
        )
    }
    
    @objc private func dismissSelfAsPresentedViewController() {
        router.dismissPresentedViewController()
    }
}