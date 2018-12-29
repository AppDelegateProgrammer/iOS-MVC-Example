
struct Address: CustomStringConvertible {
    
    let country: String
    let postalCode: String
    let city: String
    
    var description: String {
        return """
        Country: \(country)
        Postal code: \(postalCode)
        City: \(city)
        """
    }
}
