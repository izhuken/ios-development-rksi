enum SpecialOffer: Int {
    case Birthday = 15
    case BlackFriday = 50
    case MerryChristmas = 10 
}

func applyOffer(initialValue: Int, event: SpecialOffer) -> Int {
    return initialValue + event.rawValue;
}

func convertBonusToRub(bonus: Int) -> Int {
    return bonus * 100;
}

var userBonus = 0

print("Начальное количество баллов: \(userBonus)")

userBonus = applyOffer(initialValue: userBonus, event: SpecialOffer.Birthday)

print("Количество баллов после применения скидки: \(userBonus)")

print("Количество баллов в рублях: \(convertBonusToRub(bonus: userBonus))")