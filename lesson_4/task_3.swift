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
var error = 4.8

if student1.avgScore == error {
    print(
        student1.fcs,
        student1.group,
        student1.avgScore
    )
}
else if student2.avgScore == error {
    print(
        student2.fcs,
        student2.group,
        student2.avgScore
    )
}
else if student3.avgScore == error {
    print(
        student3.fcs,
        student3.group,
        student3.avgScore
    )
}