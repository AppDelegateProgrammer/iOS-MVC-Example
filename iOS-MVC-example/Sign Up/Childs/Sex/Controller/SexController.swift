
final class SexController: SexControlling {
    
    private unowned let view: SexView
    private(set) var sex: Sex = .male
    
    init(view: SexView, sex: Sex) {
        self.view = view
        self.sex = sex
    }
    
    func viewDidLoad() {
        view.set(sex: sex)
    }
    
    func onSexChanged(_ sex: Sex) {
        self.sex = sex
    }
}
