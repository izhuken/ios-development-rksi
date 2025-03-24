class BonusPromotion {
    var name: String
    var bonus: Int
    
    init(name: String, bonus: Int) {
        self.name = name
        self.bonus = bonus
    }
}

class Customer {
    var name: String
    var totalBonus: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func applyBonus(promotion: BonusPromotion, using bonusClosure: (Int) -> Void) {
        bonusClosure(promotion.bonus)
    }
}

let promotion1 = BonusPromotion(name: "Посети Азию", bonus: 100)
let promotion2 = BonusPromotion(name: "Посети Африку", bonus: 200)

let customer = Customer(name: "Иван")

let addBonusClosure: (Int) -> Void = { bonus in
    customer.totalBonus += bonus
}

customer.applyBonus(promotion: promotion1, using: addBonusClosure)
customer.applyBonus(promotion: promotion2, using: addBonusClosure)

print("Общее количество бонусов клиента \(customer.name): \(customer.totalBonus)")
