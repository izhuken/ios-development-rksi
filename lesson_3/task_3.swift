// task 3
var student1 = (
    fcs: "Лоскутов Владимир",
    group: "ИС-31", 
    avgScore: 4.9
)
var student2 = (
    fcs: "Кизименко Александр",
    group: "ИС-31", 
    avgScore: 4.8
)
var student3 = (
    fcs: "Гуренко Ксения",
    group: "ИС-31", 
    avgScore: 5.0
)

print(
    student1.avgScore > student2.avgScore
    ? "\(student1.fcs) учится лучше студента \(student2.fcs)"
    : "\(student2.fcs) учится лучше студента \(student1.fcs)",

    student1.avgScore > student3.avgScore
    ? "\(student1.fcs) учится лучше студента \(student3.fcs)"
    : "\(student3.fcs) учится лучше студента \(student1.fcs)",

    student2.avgScore > student3.avgScore
    ? "\(student2.fcs) учится лучше студента \(student3.fcs)"
    : "\(student3.fcs) учится лучше студента \(student2.fcs)"
)