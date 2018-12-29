
protocol AddressControlling: ValidatingController {
    
    var address: Address { get }
    
    func onCountryChanged(_: String)
    func onPostalCodeChanged(_: String)
    func onCityChanged(_: String)
}
