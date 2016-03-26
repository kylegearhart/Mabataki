import XCTest
@testable import Mabataki

class AddDeckViewControllerTests: XCTestCase {
    
    func test_viewDidLoad_showsCloseButton() {
        let addDeckViewController = AddDeckViewController()
        
        
        addDeckViewController.view.setNeedsLayout()
        
        
        XCTAssertEqual(addDeckViewController.navigationItem.leftBarButtonItem?.title, "Close")
    }
}
