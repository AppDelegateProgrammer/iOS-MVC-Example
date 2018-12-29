
import UIKit

final class SignUpViewController: UIViewController, SignUpView {
    
    lazy var controller: SignUpControlling = SignUpController(view: self)
    
    @IBAction private func onDoneButtonClicked() {
        controller.done()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.destination {
        case let sexView as SexViewController:
            controller.configure(view: sexView)
        case let nameView as NameView:
            controller.configure(view: nameView)
        case let birthDateView as BirthDateView:
            controller.configure(view: birthDateView)
        case let addressView as AddressView:
            controller.configure(view: addressView)
        default:
            return
        }
        segue.destination.view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func alert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

