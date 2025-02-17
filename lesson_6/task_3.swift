enum SpecialOffer: Int {
    case Birthday = 15
    case BlackFriday = 50
    case MerryChristmas = 10
    case SpecialForSmile = 100000
}

enum HotTickets: Float {
    case MoscowTashkent = 100.0
    case MoscowPhuket = 1000.0
    case MoscowUSA = 2000.0
}

// сколько для каждого + какие доступны
func checkBonus(userKMs: Float) {
    if HotTickets.MoscowTashkent.rawValue <= userKMs {
        print("На полет Москва - Ташкент достаточно километров")
    } else {
        print("На полет Москва - Ташкент нужно еще \(HotTickets.MoscowTashkent.rawValue - userKMs)")
    }

    if HotTickets.MoscowPhuket.rawValue <= userKMs {
        print("На полет Москва - Пхукет достаточно километров")
    } else {
        print("На полет Москва - Пхукет нужно еще \(HotTickets.MoscowPhuket.rawValue - userKMs)")
    }
    
    if HotTickets.MoscowUSA.rawValue <= userKMs {
        print("На полет Москва - США достаточно километров")
    } else {
        print("На полет Москва - США нужно еще \(HotTickets.MoscowUSA.rawValue - userKMs)")
    }
}

func applyOffer(initialValue: Float, event: SpecialOffer) -> Float {
    return initialValue + (Float(event.rawValue) / 100.0);
}

var userKMs: Float = 0.0

print("Начальное количество километров: \(userKMs)")

checkBonus(userKMs: userKMs)

userKMs = applyOffer(initialValue: userKMs, event: SpecialOffer.SpecialForSmile)

checkBonus(userKMs: userKMs)
