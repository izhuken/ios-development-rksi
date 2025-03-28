class Student {
    var name: String = "[Undefined]"
    var group: String = "[Undefined]"
    var avgScore: Float = 0.0

    subscript(i: String) -> String {
        get {
            if i == "n" {
                return name
            }

            if i == "g" {
                return group
            }

            return name
        }

        set(newValue) {
            if i == "n" {
                name = newValue
            }

            if i == "g" {
                group = newValue
            }
        }
    }
}

class Group {
    var name: String = "[Unnamed]"
    var students: [Student] = []

    init() {
        var Ivan = Student()
        Ivan["n"] = "Ivan"

        var Alexey = Student()
        Alexey["n"] = "Alexey"

        students.append(Ivan)
        students.append(Alexey)
    }

    subscript(i: Int) -> Student {
        get { return students[i] }
        set(newValue) { students[i] = newValue }
    }
}

var IS31 = Group()
print(IS31[0]["n"])