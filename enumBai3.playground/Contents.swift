import Foundation

// enum shippingMethod
enum ShippingMethod {
    case standard
    case express
    case sameDay (distanceKm : Int)
}

// func calculateShippingFee
func calculateShippingFee (method : ShippingMethod, orderAmount : Double?) {
    guard let orderAmount = orderAmount else {
        return print("Không được để orderAmount trống!!")
    }
    switch method {
    case .standard :
        print("Phí giao hàng của bạn là \(orderAmount)")
    case .express :
        print("Phí giao hàng của bạn là: \(orderAmount)")
    case .sameDay(let km) :
        print("Phí giao hàng của bạn là \(orderAmount) x \(km)km = \(orderAmount*Double(km))")
    }
}

//=======
calculateShippingFee(method: .sameDay(distanceKm: 4), orderAmount: nil)
