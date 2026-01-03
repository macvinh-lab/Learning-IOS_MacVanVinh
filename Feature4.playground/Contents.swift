import Foundation

//=============
// FEATURE 4 - APP LOGGER (GHI LOG)
//=============

// Func Log
func log (_ messages: String..., prefix: String = "[APP]") {
    for msg in messages {
        print("\(prefix) \(msg)")
    }
}

log("Start", "Loading", "Done")
log("Timeout", prefix: "[ERROR]")
