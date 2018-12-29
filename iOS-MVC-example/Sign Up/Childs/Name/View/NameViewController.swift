import UIKit

final class NameViewController: UIViewController, NameView {

    var controller: NameControlling!
    
    @IBAction private func onFirstNameChanged(_ sender: UITextField) {
        controller.onFirstNameChanged(sender.text ?? "")
    }
    
    @IBAction private func onLastNameChanged(_ sender: UITextField) {
        controller.onLastNameChanged(sender.text ?? "")
    }
}
