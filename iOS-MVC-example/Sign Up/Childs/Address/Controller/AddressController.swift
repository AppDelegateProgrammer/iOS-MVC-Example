
final class AddressController: AddressControlling {
    
    private var country = ""
    private var postalCode = ""
    private var city = ""
    
    var address: Address {
        return Address(country: country, postalCode: postalCode, city: city)
    }
    
    var isDataValid: Bool {
        return ![country, postalCode, city].contains { $0.isEmpty }
    }
    
    func onCountryChanged(_ country: String) {
        self.country = country
    }
    
    func onPostalCodeChanged(_ postalCode: String) {
        self.postalCode = postalCode
    }
    
    func onCityChanged(_ city: String) {
        self.city = city
    }
}
