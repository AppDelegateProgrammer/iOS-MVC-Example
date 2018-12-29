import Foundation

final class SignUpController: SignUpControlling {
    
    private unowned let view: SignUpView
    
    private var sexController: SexControlling!
    private var nameController: NameControlling!
    private var birthDateController: BirthDateController!
    private var addressController: AddressControlling!
    
    private var isDataValid: Bool {
        return ![nameController as ValidatingController, addressController as ValidatingController].contains { !$0.isDataValid }
    }
    
    init(view: SignUpView) {
        self.view = view
    }
    
    func configure(view: SexView) {
        sexController = SexController(view: view, sex: .male)
        view.controller = sexController
    }
    
    func configure(view: NameView) {
        nameController = NameController()
        view.controller = nameController
    }
    
    func configure(view: BirthDateView) {
        birthDateController = BirthDateController(view: view, initialDate: Date())
        view.controller = birthDateController
    }
    
    func configure(view: AddressView) {
        addressController = AddressController()
        view.controller = addressController
    }
    
    func done() {
        guard isDataValid else {
            view.alert(title: "Form not filled", message: "Please make sure that you have filled all fields in the form and try again.")
            return
        }

        let personalData = PersonalData(
            sex: sexController.sex,
            firstName: nameController.firstName,
            lastName: nameController.lastName,
            formattedBirthDate: birthDateController.formattedBirthDate,
            address: addressController.address
        )
        view.alert(title: "Personal data", message: "\(personalData)")
    }
}
