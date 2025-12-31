import Foundation

let scores = [8, 9, 10, 6, 7]

// Func AVG
func Average (of scores: [Int]) -> Double {
    var total: Int = 0
    for number in scores {
        total += number
    }
    let avg = Double(total) / Double(scores.count)
    return avg
}
print(Average(of: scores))

// Func Max
func maxScore(in scores: [Int]) -> Int {
    var max = scores[0]
    for number in scores {
        if number > max {
            max = number
        }
    }
    return max
}

print(maxScore(in: scores))

// Func Min
func minScores (in scores: [Int]) -> Int {
    var min = scores[0]
    for number in scores {
        if number < min {
            min = number
        }
    }
    return min
}

print(minScores(in: scores))

// Func grade
func grade (for average: Double) -> String {
    switch average {
    case 9...10 : return "A"
    case 7..<9 : return "B"
    case 5..<7 : return "C"
    case 4..<5 : return "D"
    case 0..<4 : return "F"
    default: return "Điểm không hợp lệ"
    }
}

let avg = Average(of: scores)
print(grade(for: avg))
