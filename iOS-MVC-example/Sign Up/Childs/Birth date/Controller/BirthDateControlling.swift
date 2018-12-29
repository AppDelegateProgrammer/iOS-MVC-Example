import Foundation

protocol BirthDateControlling {
    
    var formattedBirthDate: String { get }
    
    func onBirthDateChanged(_: Date)
}
