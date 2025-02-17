
// task 2
var student1 = (
    lastname: "Кизименко",
    firstname: "Александр",
    middlename: "Васильевич",
    age: 19,
    weight: 88,
    height: 170,
    college: "РКСИ",
    group: "ИС-31"
)

var student2 = (
    lastname: "Лоскутов",
    firstname: "Владимир",
    middlename: "Максимович",
    age: 18,
    height: 180,
    weight: 63,
    college: "РКСИ",
    group: "ИС-31"
)

print(
    student1.age < student2.age ? "Владимир старше Александра" : "Александр старше Владимира",
    student1.weight > student2.weight ? "Владимир весит меньше Александра" : "Александр весит меньше Владимира",
    student1.height < student2.height ? "Владимир выше Александра" : "Александр выше Владимира"
)
