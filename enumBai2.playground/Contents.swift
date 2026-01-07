import Foundation

// enum loginError
enum LoginError {
    case emptyUsername
    case emptyPassword
    case passwordTooShort
    case invalidCredential
}

// enum LoginResult
enum LoginResult{
    case success (message : String)
    case failure (error : LoginError)
}

// func loginError
func loginErrorMessage (error : LoginError) {
    switch error {
    case .emptyUsername :
        print("Tên đăng nhập không được bỏ trống")
    case .emptyPassword :
        print("Mật khẩu không được để trống")
    case .passwordTooShort :
        print("Mật khẩu quá ngắn")
    case .invalidCredential :
        print("Lỗi")
    }
}

// func login
func login (username : String?, password : String?)  -> LoginResult {
    guard let username = username else {
        return .failure(error: .emptyUsername)
    }
    guard let password = password else {
        return .failure(error: .emptyPassword)
    }
    if password.count <= 6 {
        return .failure(error: .passwordTooShort)
    }
    return .success(message: "Đăng nhập thành công!")
}

//=======
let status = login(username: "hfwf", password: "hhfffff")

switch status {
case .success(let msg):
    print("\(msg)")
case .failure(let error):
    loginErrorMessage(error: error)
}
