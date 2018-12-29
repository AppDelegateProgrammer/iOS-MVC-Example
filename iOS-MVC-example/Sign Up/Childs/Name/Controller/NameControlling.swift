
protocol NameControlling: ValidatingController {

    var firstName: String { get }
    var lastName: String { get }
    
    func onFirstNameChanged(_: String)
    func onLastNameChanged(_: String)
}
