import Foundation

//==================
// Feature 3 - SHOPPING CART
//==================

let prices = [10.0, 25.5, 4.5]

// Func totalPrice
func totalPrice (of prices: [Double], taxRate: Double = 0.1, discount : Double = 0) -> Double{
    var subtotal : Double = 0
    for price in prices{
        subtotal += price
    }
    var afterDiscount = subtotal - subtotal*discount
    if afterDiscount < 0 {
        afterDiscount = 0
    }
    let afterTax = afterDiscount + afterDiscount*taxRate
    return afterTax
}

totalPrice(of: prices)
