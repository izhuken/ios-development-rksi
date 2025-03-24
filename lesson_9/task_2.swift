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

class Group {
    var students: [Student]
    
    init(students: [Student] = []) {
        self.students = students
    }
    
    func addStudent(_ student: Student) {
        students.append(student)
    }
    
    func displayGroup() {
        print("Список студентов в группе:")
        for student in students {
            student.displayInfo()
        }
    }
}

let student1 = Student(fullName: "Иванов Иван Иванович", group: "ИС-11", avgScore: 4.5)
let student2 = Student(fullName: "Петров Петр Петрович", group: "ИС-12")

let group = Group()
group.addStudent(student1)
group.addStudent(student2)

group.displayGroup()
