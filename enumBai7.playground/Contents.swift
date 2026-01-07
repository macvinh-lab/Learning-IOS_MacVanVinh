import Foundation

// enum PaymentStatus
enum PaymentStatus {
    case idle
    case processing
    case success
    case failed (reason : String)
}

// func paymentStatusMessage
func paymentStatusMessage (status : PaymentStatus) {
    switch status {
    case .idle :
        print("Đang trống...")
    case .processing :
        print("Đang thanh toán")
    case .success :
        print("Thanh toán thành công")
    case .failed(let reason) :
        print("Giao dịch bị huỷ vì: \(reason)")
    }
}

//======
paymentStatusMessage(status: .success)
