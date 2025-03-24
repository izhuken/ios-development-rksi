class Student {
    var fullName: String
    var group: String
    var avgScore: Double
    
    init(fullName: String, group: String, avgScore: Double) {
        self.fullName = fullName
        self.group = group
        self.avgScore = avgScore
    }
    
    convenience init(fullName: String, group: String) {
        self.init(fullName: fullName, group: group, avgScore: 0.0)
    }
    
    deinit {
        print("\(self.fullName) освобождается из памяти.")
    }
    
    func displayInfo() {
        print("ФИО: \(self.fullName), Группа: \(self.group), Средний балл: \(self.avgScore)")
    }
}

let student1 = Student(fullName: "Иванов Иван Иванович", group: "ИС-11", avgScore: 4.5)

student1.displayInfo()
