import UIKit
struct Student {
    let id: Int
    let name: String
    let score: Int
}
let students: [Student] = [
    Student(id: 1, name: "An", score: 8),
    Student(id: 2, name: "Binh", score: 4),
    Student(id: 3, name: "Chi", score: 7),
    Student(id: 4, name: "An", score: 6)
]


//==============
// MARK 01 - Phần A: ARRAY
//==============

// Bài A1 - lấy danh sách tất cả sinh viên
print("=====Bài A1=====")
for item in students {
    print(item)
}

// Bài A2 - Lấy danh sách tên sinh viên
print("=====Bài A2=====")
print(students.map{$0.name})

// Bài A3 - Lọc ra danh sách sinh viên có score >=5
print("=====Bài A3=====")
print(students.filter{$0.score >= 5}.map{$0.name})

// Bài A4 - Kiểm tra có sinh viên nào rớt không (score < 5)
print("=======Bài A4=======")

// in ra danh sách sinh viên có điều kiện
students.filter{ $0.score < 5 }
    .map { student in
        print(student)
    }

// kiểm tra trong danh sách có value đáp ứng điều kiện?
if students.contains(where: {$0.score < 5}) {
    print(" Có sinh viên dưới 5")
} else {
    print("Không có sinh viên nào dưới 5")
}

// Bài A5 -  Kiểm tra tất cả sinh viên đều đầy (score >= 5)
print("=====Bài 5======")
if students.allSatisfy({$0.score >= 5}) {
    print("Tất cả sinh viên trên 5")
} else {
    print("Có sinh viên dưới 5")
}

// Bài A6 - Tìm sinh viên có id = 2
print("=====Bài A6=====")
if students.first(where: {$0.id == 2}) != nil {
    print("có sinh viên có id = 2")
}else {
    print("không có sinh viên nào có id = 2")
}


//==============
// MARK 02 - Phần B: SET
//==============

// Bài B1 + B2
print("=====Bài B1+B2=====")
var nameOfStudents: Set <String> = ["An", "Bình", "Chi"]
if nameOfStudents.contains("An"){
    print("có sinh viên tên An trong Set")
} else {
    print ("không có sinh viên tên An trong set")
}

// Bài B3
print ("===Bài B3====")
var number : Set <Int> = [1, 2, 3]
print(number)
//thêm
number.insert(4)
print(number)
//xoá
number.remove(2)
print(number)

// Bài B4
print("====Bài B4=====")
let a : Set <Int> = [1, 2, 3, 4]
let b : Set <Int> = [3, 4, 5]

//union (hợp) - lấy tất cả phần tử thuộc a và b
print(a.union(b))
//intersection (giao) - lấy phần tử thuộc cả a và b
print(a.intersection(b))
//subtracting (Hiệu) - lấy phần tử chỉ thuộc a không thuộc b
print(a.subtracting(b))

//==============
// MARK 03 - Phần C: DICTIONARY
//==============

// Bài C1
print ("===Bài C1====")

var studentDict: [Int : Student] = [1 : Student(id: 1, name: "An", score: 8),
                                    2 : Student(id: 2, name: "Bình", score: 3),
                                    3 : Student(id: 3, name: "Chi", score: 7),
                                    4 : Student(id: 4, name: "An", score: 5)]
// Bài C2
print (studentDict.filter{$0.key == 3})
// Bài C3
for stu in studentDict {
    print(stu.value)
}
// Bài C3

//lấy tất cả các key
print(studentDict.keys)
//lấy tất cả các value
print(studentDict.values)
