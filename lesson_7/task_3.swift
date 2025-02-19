struct Student {
    var fcs: String;
    var group: String;
    var avgScore: Float;

    init (fcs: String, group: String, avgScore: Float) {
        self.fcs = fcs;
        self.group = group;
        self.avgScore = avgScore;
    }
}

let student1 = Student(fcs: "Pert Petrovich Petrov", group: "IS-41", avgScore: 5.0)
let student2 = Student(fcs: "Anrey Andreevick Andreev", group: "IS-31", avgScore: 4.0)
let student3 = Student(fcs: "Alexey Alexeevich Alexeev", group: "IS-21", avgScore: 3.0)
let student4 = Student(fcs: "Ivan Ivanovich Ivanov", group: "IS-11", avgScore: 3.4)

let students = [student1, student2, student3, student4]
let searchString = "IS-11"

for student in students {
    if student.group == searchString {
        print(student.fcs, student.group, student.avgScore)
        break
    }
}
