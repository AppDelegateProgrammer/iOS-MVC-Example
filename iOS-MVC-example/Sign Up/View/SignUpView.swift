
protocol SignUpView: class {
    
    var controller: SignUpControlling { get set }
    
    func alert(title: String, message: String)
}
