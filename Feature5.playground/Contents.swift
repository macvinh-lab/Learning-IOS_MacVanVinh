import Foundation

//==============
// FEATURE 5 - USER REGISTRATION
//==============

// enum RegistrationErorr

enum RegistrationErorr : Error {
    case tooShort
    case noNumber
    case userNone
}
// func validatePassAndUsername

func validatePassAndUsername (username : String, password : String) throws {
    if username.isEmpty == true {
        throw RegistrationErorr.userNone
    }
    if password.count < 6 {
        throw RegistrationErorr.tooShort
    }
    if password.rangeOfCharacter(from: .decimalDigits) == nil {
        throw RegistrationErorr.noNumber
    }
}
//  func register

func register (username : String, password : String) throws -> String {
    do{
        try validatePassAndUsername(username: username, password: password)
        return "Đăng ký thành công"
    }
    catch RegistrationErorr.userNone {
        return "Username không được để trống"
    } catch RegistrationErorr.tooShort {
        return "Password quá ngắn"
    } catch RegistrationErorr.noNumber {
        return "Password phải có ít nhất 1 chữ số"
    } catch {
        return "Lỗi chưa xác định"
    }
}

//=========
try register(username: "macvinh", password: "abcnn1")


