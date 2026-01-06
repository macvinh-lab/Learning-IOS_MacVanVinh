import Foundation

// enum AccessState
enum AccessState {
    case underAge
    case noTicket
    case allowed
}

// func checkAccess
func checkAccess (age : Int, hasTicket : Bool) {
    var state : AccessState
    if age <= 0 {
        print("Tuổi không phù hợp")
    }
    if age < 18 {
        state = .underAge
    }
    else {
        if hasTicket == false {
            state = .noTicket
        }
        else {
            state = .allowed
        }
    }
}

//======
checkAccess(age: 0, hasTicket: false)
