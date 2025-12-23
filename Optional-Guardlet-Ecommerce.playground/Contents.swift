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
    guard sku.hasPrefix("SKU-") else{
        print("Sai định dạng SKU-")
        return
    }
    print("SKU hợp lệ \(sku)")
}
// =======================================================
// MARK: - Bài 09 - Kiểm tra giá tiền
// =======================================================

func validatePrice(_ text: String?){
    printHeader("Bài 9")
    guard let priceText = text, !priceText.isEmpty else{
        print("Chưa nhập giá")
        return
    }
    guard let price = Double(priceText) else{
        print("Giá không hợp lệ")
        return
    }
    
    var a = 9.9
    let b = Int(a)
    
    guard price > 0 else{
        print("Giá phải lớn hơn 0")
        return
    }
    print("Giá hợp lệ \(price)")
}
// =======================================================
// MARK: - Bài 10 - Tính thành tiền
// =======================================================

func calcTotal (priceText: String?, quantityText: String?){
    printHeader("Bài 10")
    guard let priceString = priceText, !priceString.isEmpty else{
        print("Giá tiền chưa được nhập")
        return
    }
    guard let price = Double(priceString) else{
        print("Giá tiền không hợp lệ")
        return
    }
    guard let quantityString = quantityText else{
        print("Số lượng chưa được nhập")
        return
    }
    guard let quantity = Int(quantityString) else{
        print("Số lượng sai định dạng")
        return
    }
    guard quantity > 0 else{
        print("Số lượng phải lớn hơn 0")
        return
    }
    let total = price * Double(quantity)
    print("Tổng tiền = \(total)")
    
}
// =======================================================
// MARK: - Bài 11 - Tạo sản phẩm
// =======================================================
func createProduct (sku: String?, name: String?, priceText: String?) -> Product? {
    printHeader("Bài 11")
    guard let sku = sku, !sku.isEmpty else {
        print("Chưa nhập mã sản phẩm")
        return nil
    }
    guard sku.hasPrefix("SKU-") else{
        print("Mã sản phẩm không hợp lệ")
        return nil
    }
    guard let name = name, !name.isEmpty else {
        print("Chưa nhập tên")
        return nil
    }
    guard let priceText = priceText, let price = Double(priceText) else{
        print("Giá không hợp lệ")
        return nil
    }
    guard price > 0 else {
        print("Giá phải lớn hơn 0")
        return nil
    }
    print("Tạo sản phẩm thành công!")
    return Product(sku: sku, name: name, price: price)
    
}

// =======================================================
// MARK: - Bài 12 - Tăng giá trị biến bên ngoài (inout)
// =======================================================

func increase (_ value: inout Int){
    value += 1
}

// =======================================================
// MARK: - Bài 13 - Thêm sản phẩm vào giỏ hàng
// =======================================================

var cart: [String: Int] = ["SKU-001": 1]
let priceList: [String: Double] = ["SKU-001": 120000,
                                   "SKU-002": 99000]
func addToCart ( sku: String?,
                 quantityText: String?,
                 cart: inout [String: Int],
                 priceList: [String: Double]){
    guard let sku = sku else {
        print("SKU lỗi không tìm thấy")
        return
    }
    for item in priceList {
        if item.key == sku {
            print("Không tồn tại")
        }
    }
    guard let quantityText = quantityText, let quantity = Int(quantityText) else {
        print("Số lượng không phù hợp")
        return
    }
    if quantity <= 0 {
        print("Số lượng phải lớn hơn 0")
    }
    
}

// =======================================================
// MARK: - Chạy test chương trình
// =======================================================
validateSKU("SKU-100")
validatePrice("100")
calcTotal(priceText: "10000", quantityText: "2")
if let product = createProduct(sku: "SKU-100", name: "Iphone 12", priceText: "10000"){
    print("Tên sản phẩm: \(product.name), Giá tiền: \(product.price)")
}
printHeader("Bài 12")
var number = 10
print("value trước khi bị thay đổi \(number)")
increase(&number)
print("value sau khi bị thay đổi \(number)")
