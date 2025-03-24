var sales = [
    "Посети Азию",
    "Посети Африку",
    "Удвоенные мили за Европу",
    "Удвоенные мили за Америку",
    "Почти бесплатное посещение Северной Кореи"
]

// Сортировка по алфавиту
let sortedSalesAlphabetically = sales.sorted { $0 < $1 }

// Вывод отсортированного списка
for sale in sortedSalesAlphabetically {
    print(sale)
}
