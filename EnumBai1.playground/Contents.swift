import Foundation

// enum LoadState
enum LoadState {
    case idle
    case loading
    case success (dataCount: Int)
    case empty
    case failure (errorMessage: String)
}

// func handleLoadState
func handleLoadState (state : LoadState) {
    switch state {
    case .idle :
        print("Chưa bắt đầu tải")
    case .loading :
        print("Đang tải")
    case .success(let data):
        print("Đã tải thành công \(data)")
    case .empty :
        print("Không có dữ liệu")
    case .failure(let fail) :
        print("Lỗi \(fail)")
    }
}

//========
handleLoadState(state: .success(dataCount: 233131))
