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

func validateSKU (_ sku: String?) -> String? {
    printHeader("Bài 8")
    //unwrap sku
    guard let sku = sku else{
        print("Chưa nhập mã sản phẩm")
        return nil
    }
    guard !sku.isEmpty else{
        print("Mã sản phẩm trống")
        return nil
    }
    guard sku.hasPrefix("SKU-") else{
        print("Sai định dạng SKU-")
        return nil
    }
    return sku
}
// =======================================================
// MARK: - Bài 09 - Kiểm tra giá tiền
// =======================================================

func validatePrice(_ price: String?) -> Double? {
    printHeader("Bài 9")
    //unwrap price
    guard let priceText = price, !priceText.isEmpty else{
        print("Chưa nhập giá")
        return nil
    }
    
    guard let price = Double(priceText) else{
        print("Giá không hợp lệ")
        return nil
    }
    
    guard price > 0 else{
        print("Giá phải lớn hơn 0")
        return nil
    }
    return price
}
// =======================================================
// MARK: - Bài 10 - Tính thành tiền
// =======================================================

func calcTotal (priceText: String?, quantityText: String?){
    printHeader("Bài 10")
    //unwrap price
    guard let price = priceText,!price.isEmpty,
          let price = Double(price),price >= 0 else{
        print("Giá tiền chưa hợp lệ")
        return
    }
    
//    validatePrice(priceText)
        
    //unwrap quantity
    guard let quantity = quantityText,
          let quantity = Int(quantity),
          quantity > 0 else{
        print("Số lượng chưa được nhập")
        return
    }
    
    // tính tổng tiền
    let total = price * Double(quantity)
    print("Tổng tiền = \(total)")
    
}
// =======================================================
// MARK: - Bài 11 - Tạo sản phẩm
// =======================================================
func createProduct (sku: String?, name: String?, priceText: String?) -> Product? {
    printHeader("Bài 11")
    //unwrap sku
    guard let sku = validateSKU(sku),
        let price = validatePrice(priceText) else {
        return nil
    }
    
    //unwrap name
    guard let name = name, !name.isEmpty else {
        print("Chưa nhập tên")
        return nil
    }
    
    print("Tạo sản phẩm thành công!")
    //thêm sản phẩm
    return Product(sku: sku, name: name, price: price)
    
}

// =======================================================
// MARK: - Bài 12 - Tăng giá trị biến bên ngoài (inout)
// =======================================================

func increase (_ value: Int) -> Int {
    var newValue = value
    return newValue + 1
}

// =======================================================
// MARK: - Bài 13 - Thêm sản phẩm vào giỏ hàng
// =======================================================

var cart: [String: Int] = ["SKU-001": 1, "SKU-002": 2]
let priceList: [String: Double] = ["SKU-001": 120000,
                                   "SKU-002": 99000]
func addToCart ( sku: String?,
                 quantityText: String?,
                 cart: inout [String: Int],
                 priceList: [String: Double]){
    printHeader("Bài 13")
    guard let sku = sku else {
        print("SKU lỗi không tìm thấy")
        return
    }
    /*for item in priceList {
        if item.key == sku {
            print("Không tồn tại")
            
        }
    }*/
    guard priceList[sku] != nil else {
        print("Sản phẩm không tồn tại!")
        return
    }
    guard let quantityText = quantityText, let quantity = Int(quantityText) else {
        print("Số lượng không phù hợp")
        return
    }
    if quantity <= 0 {
        print("Số lượng phải lớn hơn 0")
    }
    /*var update: Int = 0
    for item in cart {
        if item.key == sku {
            update = item.value
            update += quantity
        }
    }*/
    let oldQuantity = cart[sku] ?? 0
    let newQuantity = oldQuantity + quantity
    let updateQuantity = [sku : newQuantity]
    cart.merge(updateQuantity) {old, new in new}
    print("Thêm vào giỏ hàng thành công")
    cart.merge(["SKU": 1000]) { _, new in new }
    print("Giỏ hàng hiện tại \(cart)")

    
    

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
let a = increase(number)
print("value sau khi bị thay đổi \(a)")

addToCart(sku: "SKU-002", quantityText: "2", cart: &cart, priceList: priceList)

