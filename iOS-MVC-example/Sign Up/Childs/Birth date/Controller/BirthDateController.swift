import Foundation

final class BirthDateController: BirthDateControlling {
    
    private unowned let view: BirthDateView
    private var birthDate: Date
    
    var formattedBirthDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd"
        return formatter.string(from: birthDate)
    }
    
    init(view: BirthDateView, initialDate: Date) {
        self.view = view
        self.birthDate = initialDate
    }
    
    func onBirthDateChanged(_ birthDate: Date) {
        self.birthDate = birthDate
    }
}
