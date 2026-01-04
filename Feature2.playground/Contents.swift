import Foundation

//=====================
//  FEATURE 2 - COMMENT MODERATION
//=====================

let comments = ["hello", "", "this is stupid", "nice"]
let banned = ["stupid", "hate"]

// Func filterEmpty
func filterEmpty (_ comments: [String]) -> [String] {
    var empty : [String] = []
    for comment in comments {
        if comment.isEmpty{
            empty.append(comment)
        }
    }
    return empty
}

// Func containsBannedWord
func containsBannedWord (_ comment : String, banned : [String]) -> Bool {
    for ban in banned {
        if comment.contains(ban){
            return true
        }
    }
    return false
}

// Func moderate
func modarate (_ comments : [String], banned : [String]) -> [String] {
    var cleanCmt : [String] = []
    for cmt in comments {
        if filterEmpty(comments).contains(cmt){
            continue
        }
        if containsBannedWord(cmt, banned: banned) == true {
            continue
        }
        cleanCmt.append(cmt)
    }
        return cleanCmt
    
}

print(modarate(comments, banned: banned))
