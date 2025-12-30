import UIKit

//Truct Car & TypeOfCar
struct Car {
    let id : Int
    let name : String
    let color : String
    let type : Int
}
struct TypeOfCar {
    let idType : Int
    let nameType : String
    let wheelCount : Int
}

// tạo danh sách xe
var car : [Car] = [Car(id: 1, name: "Car A", color: "Red", type: 01),
                   Car(id: 2, name: "Car B", color: "Black", type: 01),
                   Car(id: 3, name: "Car C", color: "Red", type: 02),
                   Car(id: 4, name: "Car D", color: "White", type: 02),
                   Car(id: 5, name: "Car E", color: "Black", type: 03),
                   Car(id: 6, name: "Car F", color: "Red", type: 03)]
var typeOfCar : [TypeOfCar] = [TypeOfCar(idType: 01, nameType: "Sedan", wheelCount: 4),
                               TypeOfCar(idType: 02, nameType: "SUV", wheelCount: 4),
                               TypeOfCar(idType: 03, nameType: "Truck", wheelCount: 6),]
// In thông tin từng xe

for cars in car {
    for types in typeOfCar{
        if cars.type == types.idType {
            print("Tên xe: \(cars.name), Màu xe: \(cars.color), Loại xe: \(types.nameType), Số bánh xe: \(types.wheelCount)")
        }
    }
}
