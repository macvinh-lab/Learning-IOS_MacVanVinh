import UIKit
import Foundation
// =======================================================
// OPTIONAL + GUARD LET + INOUT (E-COMMERCE PRACTICE)
// Quy ước: Mỗi bài = 1 commit
// =======================================================
// MARK: - Helpers (Dùng chung)
func printHeader(_ title: String) {
 print("\n====================")
 print(title)
 print("====================")
}
// MARK: - Model
struct Product {
 let sku: String
 let name: String
 let price: Double
}
// =======================================================
// MARK: - Bài 01 – Nhận diện Optional
// Commit: "B01 - Nhan dien Optional"
// =======================================================
func bai01() {
 printHeader("Bài 01")
 let name: String = "An"
 let nickname: String? = nil
 let age: Int? = 20
 // TODO:
 // 1) Biến nào là Optional?
 // 2) Biến nào dùng trực tiếp được?
 // 3) Biến nào bắt buộc unwrap trước khi dùng?
 // Gợi ý in ra kiểu để quan sát:
 print("name:", name)
 print("nickname:", nickname as Any)
 print("age:", age as Any)
}
// =======================================================
// MARK: - Bài 02 – Unwrap bằng if let
// Commit: "B02 - Unwrap bang if let"
// =======================================================
func bai02() {
 printHeader("Bài 02")
 let score: Int? = 8
 // TODO: bắt buộc if let
 if let score = score {
 print("Điểm:", score)
 } else {
 print("Chưa có điểm")
 }
}
// =======================================================
// MARK: - Bài 08 - Kiểm tra mã sản phẩm SKU
// =======================================================

func validateSKU (_ sku: String?){
    printHeader("Bài 8")
    guard let sku = sku else{
        print("Chưa nhập mã sản phẩm")
        return
    }
    guard !sku.isEmpty else{
        print("Mã sản phẩm trống")
        return
    }
    guard sku == "SKU-" else{
        print("Sai định dạng SKU-")
        return
    }
    print("SKU hợp lệ \(sku)")
}
