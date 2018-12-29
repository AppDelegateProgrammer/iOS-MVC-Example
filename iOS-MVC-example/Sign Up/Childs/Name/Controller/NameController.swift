
final class NameController: NameControlling {

    var firstName = ""
    var lastName = ""
    
    var isDataValid: Bool {
        print(firstName)
        print(lastName)
        return ![firstName, lastName].contains { $0.isEmpty }
    }
    
    func onFirstNameChanged(_ firstName: String) {
        self.firstName = firstName
    }
    
    func onLastNameChanged(_ lastName: String) {
        self.lastName = lastName
    }
}
