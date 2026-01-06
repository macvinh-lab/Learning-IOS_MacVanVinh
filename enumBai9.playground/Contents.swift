import Foundation

// enum ProcessState
enum ProcessState {
    case notStarted
    case inProgress
    case completed
    case cancelled
    case failure (reason : String)
}

// func processStateDescription
func processStateDescription (state : ProcessState) {
    switch state {
    case .notStarted :
        print("Chưa bắt đầu")
    case .inProgress :
        print("Đang chạy")
    case .completed :
        print("Hoàn tất")
    case .cancelled:
        print("Bị huỷ")
    case .failure(let reason) :
        print("Xảy ra lỗi: \(reason)")
    }
}

//=====
processStateDescription(state: .inProgress)
