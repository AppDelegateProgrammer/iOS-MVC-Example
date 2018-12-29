import UIKit

final class SexViewController: UIViewController, SexView {
    
    @IBOutlet private weak var sexSegmentedControl: UISegmentedControl!

    var controller: SexControlling!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        controller.viewDidLoad()
    }
    
    @IBAction private func onSexChanged(_ sender: UISegmentedControl) {
        controller.onSexChanged(Sex(rawValue: sender.selectedSegmentIndex) ?? .male)
    }
    
    func set(sex: Sex) {
        sexSegmentedControl.selectedSegmentIndex = sex.rawValue
    }
}
