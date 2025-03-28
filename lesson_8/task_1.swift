class Student {
    var name: String;
    var group: String;
    var avgScore: Float;

    init (name: String, group: String, avgScore: Float) {
        self.name = name;
        self.group = group;
        self.avgScore = avgScore;
    }

    func updateAvgScore(newScore: Float) {
        self.avgScore = newScore
    }

    func display () {
        print(student1.name, student1.group, student1.avgScore)
    }
}

let student1 = Student(name: "Pert Petrovich Petrov", group: "IS-41", avgScore: 5.0)
let student2 = Student(name: "Ivan Invanovich Ivanov", group: "IS-31", avgScore: 4.0)
let student3 = Student(name: "Vladimir Vladimirovich Vladimirov", group: "IS-21", avgScore: 2.0)

student3.updateAvgScore(newScore: 5.0)

let group: [Student] = [student1, student2, student3]

func search(group: [Student], name: String) -> Bool {
    return group.contains(where: { $0.name == name })
}


for student in group {
    student.display()
}