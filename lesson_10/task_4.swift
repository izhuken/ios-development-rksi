class Customer {
    var name: String
    var totalBonus: Int = 0
    
    init(name: String) {
        self.name = name
    }
}

class BonusPromotion {
    var name: String
    var bonus: Int
    
    init(name: String, bonus: Int) {
        self.name = name
        self.bonus = bonus
    }
}

class PromotionManager {
    private var promotions: [BonusPromotion] = []
    
    func addPromotion(promotion: BonusPromotion) {
        promotions.append(promotion)
    }
    
    func getPromotion(at index: Int) -> BonusPromotion? {
        guard index >= 0 && index < promotions.count else { return nil }
        return promotions[index]
    }

    func getAllPromotions() -> [BonusPromotion] {
        return promotions
    }

    func applyBonus(index: Int) -> (_ customer: Customer) -> Void {
        let promotion = self.getPromotion(at: index)

        func closure(customer: Customer) {
            if (promotion == nil) {
                print("Указанная акция не найдена!")
                return
            }

            customer.totalBonus += promotion!.bonus
        }

        return closure
    }
}


let promotionManager = PromotionManager()

promotionManager.addPromotion(promotion: BonusPromotion(name: "Посети Азию", bonus: 100))
promotionManager.addPromotion(promotion: BonusPromotion(name: "Посети Африку", bonus: 200))
promotionManager.addPromotion(promotion: BonusPromotion(name: "Посети Европу", bonus: 150))
promotionManager.addPromotion(promotion: BonusPromotion(name: "Посети Америку", bonus: 250))
promotionManager.addPromotion(promotion: BonusPromotion(name: "Посети Австралию", bonus: 300))

let customer = Customer(name: "Иван")

let selectedIndex = 2 


print("Общее количество бонусов клиента \(customer.name): \(customer.totalBonus)")

let closure = promotionManager.applyBonus(index: selectedIndex)

closure(customer)

print("Общее количество бонусов клиента \(customer.name): \(customer.totalBonus)")