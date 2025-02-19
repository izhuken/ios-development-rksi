class Student {
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

print(student1.fcs, student1.group, student1.avgScore)