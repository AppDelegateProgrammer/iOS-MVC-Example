
struct PersonalData: CustomStringConvertible {
    
    let sex: Sex
    let firstName: String
    let lastName: String
    let formattedBirthDate: String
    let address: Address
    
    var description: String {
        return """
        Your data:
        
        Sex: \(sex)
        First name: \(firstName)
        Last name: \(lastName)
        Date of birth: \(formattedBirthDate)
        \(address)
        """
    }
}
