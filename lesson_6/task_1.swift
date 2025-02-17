enum SpecialOffer: Int {
    case Birthday = 15
    case BlackFriday = 50
    case MerryChristmas = 10 
}

func applyOffer(initialValue: Int, event: SpecialOffer) -> Int {
    return initialValue + event.rawValue;
}

var userBonus = 0

print("Начальное количество баллов: \(userBonus)")

userBonus = applyOffer(initialValue: userBonus, event: SpecialOffer.Birthday)

print("Количество баллов после применения скидки: \(userBonus)")
