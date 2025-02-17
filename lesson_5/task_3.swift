var student1: [String: String] = [
    "fcs": "Petr Pretovich Petrov",
    "avgScore": "4.5",
    "group": "IS-11"
]

var student2: [String: String] = [
    "fcs": "Andrey Areevich Andreev",
    "avgScore": "5.0",
    "group": "IS-22"
]

if Float(student1["avgScore"]!)! > Float(student2["avgScore"]!)! {
    print("Первый студент учится лучше второго")
} else {
    print("Второй студент учится лучше первого")
}
