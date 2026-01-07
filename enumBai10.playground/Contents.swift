import Foundation

// enum OperationResult
enum OperationResult {
    case success (data : String)
    case failure (errorMessage : String)
}

// func handleOperationResult
func handleOperationResult (result : OperationResult) {
    switch result {
    case .success(let data) :
        print("Xử lý thành công, trả về: \(data)")
    case .failure(let message) :
        print("Kết quả xử lý lỗi vì: \(message)")
    }
}

//=======
handleOperationResult(result: .failure(errorMessage: "Lỗi chưa xác định!!"))
