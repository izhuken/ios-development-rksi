var sales: [String: Int] = [
    "Посети Азию": 1,
    "Посети Африку": 12,
    "Удвоенные мили за Европу": 13,
    "Удвоенные мили за Америку": 14,
    "Почти бесплатное посещение Северной Кореи": 15
]

var userBonusValue = 0

func addBonuses(from sales: [String: Int], using applyBonus: (Int) -> Void) {
    for value in sales.values {
        applyBonus(value)
    }
}

addBonuses(from: sales, using: { bonus in
    userBonusValue += bonus
})

print("Общая сумма бонусов: \(userBonusValue)")
