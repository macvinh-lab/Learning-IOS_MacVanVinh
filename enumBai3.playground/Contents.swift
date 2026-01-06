import Foundation

// enum shippingMethod
enum ShippingMethod {
    case standard
    case express
    case sameDay (distanceKm : Int)
}

// func calculateShippingFee
func calculateShippingFee (method : ShippingMethod, orderAmount : Double?) {
    guard let orderAmount = orderAmount, orderAmount > 0 else {
        return print("Không được để orderAmount trống!!")
    }
    
    switch method {
    case .standard :
        print("Phí giao hàng của bạn là \(orderAmount)")
    case .express :
        print("Phí giao hàng của bạn là: \(orderAmount * 2)")
    case .sameDay(let km) :
        print("Phí giao hàng của bạn là \(orderAmount) x \(km)km = \(orderAmount*Double(km))")
    }
}

//=======
calculateShippingFee(method: .express, orderAmount: 1)
