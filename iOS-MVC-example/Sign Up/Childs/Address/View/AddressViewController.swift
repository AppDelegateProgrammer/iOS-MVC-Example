import UIKit

final class AddressViewController: UIViewController, AddressView {
    
    var controller: AddressControlling!
    
    @IBAction private func onCountryChanged(_ sender: UITextField) {
        controller.onCountryChanged(sender.text ?? "")
    }
    
    @IBAction private func onPostalCodeChanged(_ sender: UITextField) {
        controller.onPostalCodeChanged(sender.text ?? "")
    }
    
    @IBAction private func onCityChanged(_ sender: UITextField) {
        controller.onCityChanged(sender.text ?? "")
    }
}
