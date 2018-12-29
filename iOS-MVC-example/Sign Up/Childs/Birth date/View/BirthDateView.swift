import Foundation

protocol BirthDateView: class {
    
    var controller: BirthDateControlling! { get set }

    func set(birthDate: Date)
}
