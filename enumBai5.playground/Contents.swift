import Foundation

// enum Route
enum Route {
    case home
    case productDetail (productID : Int)
    case cart (isLoggedIn : Bool)
    case checkout (isLoggedIn : Bool)
    case login
}

// func resolveRoute
func resolveRoute (route : Route) {
    switch route {
    case .home :
        print("Chuyển hướng về Home")
    case .productDetail(let proID) :
        print("Chuyển hướng đến sản phẩm đang xem \(proID)")
    case .cart(let isLogg) :
        if isLogg == false {
            print("Chuyển hướng đến trang đăng nhập")
        }
        else{
            print("Chuyển hướng đến giỏ hàng")
        }
    case .checkout(let isLoggedIn) :
        if isLoggedIn == false {
            print("bạn chưa đăng nhập")
        }
        else {
            print("Checkout")
        }
    case .login :
        print("Login")
    }
}

//======
resolveRoute(route: .productDetail(productID: 1123))
