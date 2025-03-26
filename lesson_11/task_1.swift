    let numA = "123"
    let numB = "456a"
    let numC = "789b"
    let numD = "101112"
    let numE = "abc123"

    var result = 0

    func addToTotal(from string: String) {
        if let number = Int(string) {
            result += number
        } else {
            print("Не удалось преобразовать строку '\(string)' в Int")
        }
    }

    addToTotal(from: numA)
    addToTotal(from: numB)
    result += Int(numC) ?? 0
    result += Int(numD) ?? 0
    result += Int(numE) ?? 0

    print("Сумма всех констант: \(result)")