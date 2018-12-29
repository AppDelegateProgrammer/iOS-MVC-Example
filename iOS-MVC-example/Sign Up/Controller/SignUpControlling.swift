
protocol SignUpControlling {
    
    func configure(view: SexView)
    func configure(view: NameView)
    func configure(view: BirthDateView)
    func configure(view: AddressView)
    
    func done()
}
