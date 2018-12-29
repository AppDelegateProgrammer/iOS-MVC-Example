
protocol SexView: class {
    
    var controller: SexControlling! { get set }

    func set(sex: Sex)
}
