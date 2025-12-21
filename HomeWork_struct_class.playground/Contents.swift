import UIKit

var greeting = "Hello, playground"
struct Car {
    let idCar: Int
    let nameCar: String
    var colorCar: String
}
class MotorBike {
    let idMotorBike: Int
    let nameMotorBike: String
    var colorMotorBike: String
    init(idMotorBike: Int, nameMotorBike: String, colorMotorBike: String) {
        self.idMotorBike = idMotorBike
        self.nameMotorBike = nameMotorBike
        self.colorMotorBike = colorMotorBike
    }
}
var cars: [Car] = [(Car(idCar: 01, nameCar: "Mer Benz", colorCar: "red")),
                   (Car(idCar: 02, nameCar: "Toyota", colorCar: "blue")),
                   (Car(idCar: 03, nameCar: "Lamborghini", colorCar: "blue"))]
let motorBikes: [MotorBike] = [(MotorBike(idMotorBike: 1, nameMotorBike: "Honda AB", colorMotorBike: "black")),
                              (MotorBike(idMotorBike: 1, nameMotorBike: "Honda SH", colorMotorBike: "White")),
                              (MotorBike(idMotorBike: 1, nameMotorBike: "Yamaha Exciter", colorMotorBike: "blue"))]
print(cars.filter{$0.colorCar == "blue"}.map{$0.nameCar})
print(motorBikes.filter{$0.colorMotorBike == "blue"}.map{$0.nameMotorBike})
