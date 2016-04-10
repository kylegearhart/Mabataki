import UIKit

class AddDeckViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Add Deck"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close",
            style: .Plain,
            target: nil,
            action: nil
        )
    }
}