typealias Student = (name: String, carNumber: Int?, assignment: Int?)

let alesha: Student = (
    name: "Алеша", carNumber: nil, assignment: nil
)

let ivan: Student = (
    name: "Иван", carNumber: 123, assignment: nil
)

let alex: Student = (
    name: "Алекс", carNumber: nil, assignment: 5
)

let sergey: Student = (
    name: "Сергей", carNumber: 321, assignment: 4
)

let azamat: Student = (
    name: "Азамат", carNumber: nil, assignment: 3
)

func displayStudentInfo(student: Student) {
    print(student.name)

    if let carNumber = student.carNumber {
        print("У него есть автомобиль с номером \(carNumber)")
    } else {
        print("У него нет машины")
    }

    if let assignment = student.assignment {
        print("Он был на контрольной и получил \(assignment)")
    } else {
        print("Его не было на контрольной")
    }
}

displayStudentInfo(student: alesha)
displayStudentInfo(student: ivan)
displayStudentInfo(student: alex)
displayStudentInfo(student: sergey)
displayStudentInfo(student: azamat)
