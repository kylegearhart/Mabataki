import UIKit

class DeckListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "My Decks"

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Add Deck",
            style: .Plain,
            target: nil,
            action: nil
        )
    }

}
