@testable import Mabataki

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
