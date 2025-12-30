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
var cars : [Car] = [Car(id: 1, name: "Car A", color: "Red", type: 01),
                   Car(id: 2, name: "Car B", color: "Black", type: 01),
                   Car(id: 3, name: "Car C", color: "Red", type: 02),
                   Car(id: 4, name: "Car D", color: "White", type: 02),
                   Car(id: 5, name: "Car E", color: "Black", type: 03),
                   Car(id: 6, name: "Car F", color: "Red", type: 03)]
var typeOfCar : [TypeOfCar] = [TypeOfCar(idType: 01, nameType: "Sedan", wheelCount: 4),
                               TypeOfCar(idType: 02, nameType: "SUV", wheelCount: 4),
                               TypeOfCar(idType: 03, nameType: "Truck", wheelCount: 6),]
// In thông tin từng xe
print("====Danh sách các xe=======")
for car in cars {
    for types in typeOfCar{
        if car.type == types.idType {
            print("Tên xe: \(car.name), Màu xe: \(car.color), Loại xe: \(types.nameType), Số bánh xe: \(types.wheelCount)")
        }
    }
}

// Lọc các xe thoả mãn màu "RED" + 4 bánh - Câu 3
print("=====Lọc các xe có màu RED & 4 bánh=======")
//for car in cars {
//    for types in typeOfCar{
//        if car.type == types.idType {
//            if car.color == "Red" && types.wheelCount == 4
//            {
//                print("Tên xe: \(car.name), Màu xe: \(car.color), Loại xe: \(types.nameType), Số bánh xe: \(types.wheelCount)")
//            }
//        }
//    }
//}
for car in cars {
    for type in typeOfCar {
        if car.type == type.idType,
           car.color == "Red",
           type.wheelCount == 4 {

            print("Tên xe: \(car.name), Màu xe: \(car.color), Loại xe: \(type.nameType), Số bánh xe: \(type.wheelCount)")
        }
    }
}

// Câu 4 - tạo mảnh chứa tên các xe từ danh sach ban đầu
print("=====Mảng tên các xe=====")
//var carName : [String] = []
//for car in cars {
//    carName.append(car.name)
//}
let carNames = cars.map(\.name)
print(carNames)

 // Câu 5 - Tạo 1 Set loại xe + in ra số lượng loại xe khác nhau
print("======Set loại xe=====")
var setTypeOfCar : Set <String> = []
for types in typeOfCar {
    setTypeOfCar.insert(types.nameType)
}
print("Số lượng loại xe khác nhau trong Set: \(setTypeOfCar.count)")

//Câu 6 - kiểm tra "SUV" và 4 bánh có tồn tại trong Set hay không
print("====Kiem tra 'SUV' trong Set====")
print(setTypeOfCar.contains("SUV") ? "Có SUV trong Set" : "Không có SUV trong Set")
    
// Câu 7 - Tạo Dictionary
print("====DICTIONARY=====")
let sameColorCar = Dictionary(grouping: cars, by: \.color)

//đếm số lượng xe theo từng màu
//for (key, value) in sameColorCar {
//    print("Số lượng xe màu \(key) là: \(value.count)")
//}
sameColorCar.forEach{ color, car in
    print("Số lượng xe có màu \(color) là: \(car.count)")
}

// câu 9 - viết hàm lấy danh sách xe theo loại
func getCarByType(_ typeName: String, carList: [Car], typeList: [TypeOfCar]) -> [Car]{
    //tìm idType thông qua nameType
    guard let types = typeList.first(where: {$0.nameType == typeName}) else {
        
        return []
    }
    //lọc car với idType vừa tìm được
    let filterType = carList.filter{$0.type == types.idType}
    return filterType
}
print("xe theo loại xe")
let suv = getCarByType("SU", carList: cars, typeList: typeOfCar)
suv.forEach {
    print("\($0.name) : \($0.color) : \($0.type)")
}
