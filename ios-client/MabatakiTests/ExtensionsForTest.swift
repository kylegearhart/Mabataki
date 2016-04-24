import Foundation
import UIKit

private let oneHundredthOfASecond: NSTimeInterval = 0.01

extension NSRunLoop {
    static func mab_advance(by timeInterval: NSTimeInterval = oneHundredthOfASecond) {
        let stopDate = NSDate().dateByAddingTimeInterval(timeInterval)
        mainRunLoop().runUntilDate(stopDate)
    }
}

extension UIApplication {
    static func mab_tapNavBarButton(button: UIBarButtonItem) {
        sharedApplication().sendAction(
            button.action,
            to: button.target,
            from: nil,
            forEvent: nil
        )
    }
}
