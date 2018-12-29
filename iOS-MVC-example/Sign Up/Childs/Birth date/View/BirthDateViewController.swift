import UIKit

final class BirthDateViewController: UIViewController, BirthDateView {
    
    @IBOutlet private weak var birthDatePicker: UIDatePicker!

    var controller: BirthDateControlling!
    
    @IBAction private func onBirthDateChanged(_ sender: UIDatePicker) {
        controller.onBirthDateChanged(sender.date)
    }
    
    func set(birthDate: Date) {
        birthDatePicker.date = birthDate
    }
}
