protocol IStudent {
    var name: String {get set};
    var group: String  {get set};
    var avgScore: Float  {get set};   

    func displayAvgScore() -> Void;
}

extension IStudent {
    func displayAvgScore() -> Void {
        print(self.avgScore)
    }
}

class Student: IStudent {
    var name: String;
    var group: String;
    var avgScore: Float;   
    
    init (name: String, group: String, avgScore: Float) {
        self.name = name;
        self.group = group;
        self.avgScore = avgScore;
    }
}

let student = Student(name: "Pert Petrovich Petrov", group: "IS-41", avgScore: 5.0)

student.displayAvgScore()