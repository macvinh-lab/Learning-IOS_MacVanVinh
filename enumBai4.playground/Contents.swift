import Foundation

// enum OrderStatus
enum OrderStatus {
    case created
    case paid
    case shipping
    case delivered
    case cancelled (reason: String)
}

// func orderStatusDescription
func orderStatusDescription (status : OrderStatus){
    switch status {
    case .created :
        print("Đơn hàng của bạn đã được tạo")
    case .paid :
        print("Đã thanh toán đơn hàng")
    case .shipping :
        print("Đơn hàng của bạn đã rời kho và đang được vận chuyển")
    case .delivered :
        print("Đơn hàng của bạn đã được giao")
    case.cancelled(let reason) :
        print("Đơn hàng của bạn đã bị huỷ với lý do: \(reason)")
    }
}


//======
orderStatusDescription(status: .cancelled(reason: "Khách hàng muốn thay đổi phương thức thanh toán"))
