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

var a = Student()
a["n"] = "Ivan"
print(a["n"])