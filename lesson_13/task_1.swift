var student: [Any] = ["Иван", "ИС-31", 5.0]

student[2] = 10.0 as Any

print("Характеристики:")
for field in student {
    if field is String {
        print(field)
    }
}

print("Весь массив:")
for field in student {
    print(field)
}