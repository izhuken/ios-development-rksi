var student1: [String: String] = [
    "name": "Petr",
    "lastname": "Petrov",
    "middlename": "Petrovich",
    "age": "18",
    "height": "177",
    "weight": "77",
    "college": "RKSI",
    "group": "IS-11"
]

var student2: [String: String] = [
    "name": "Andrey",
    "lastname": "Andreev",
    "middlename": "Andreevich",
    "age": "19",
    "height": "188",
    "weight": "88",
    "college": "RKSI",
    "group": "IS-22"
]

if Int(student1["age"]!)! > Int(student2["age"]!)! {
    print("Первый студент старше второго")
} else {
    print("Второй студент старше первого")
}

if Int(student1["height"]!)! > Int(student2["height"]!)! {
    print("Первый студент выше второго")
} else {
    print("Второй студент выше первого")
}

if Int(student1["weight"]!)! > Int(student2["weight"]!)! {
    print("Первый студент весит больше второго")
} else {
    print("Второй студент весит больше первого")
}