import Foundation

// enum SettingAction
enum SettingsAction {
    case profile
    case notification
    case appearance
    case help
    case logout
}

// func handleSettingsAction
func handleSettingsAction (action : SettingsAction) {
    switch action {
    case .profile :
        print("Thông tin cá nhân")
    case .notification :
        print("Thông báo")
    case .appearance :
        print("Trang chủ đề")
    case .help :
        print("Trợ giúp")
    case .logout :
        print("Đăng xuất")
    }
}

//=====
handleSettingsAction(action: .notification)
