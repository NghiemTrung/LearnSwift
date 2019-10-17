//
//  Homework.swift
//  Day03
//
//  Created by Trung on 10/16/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

//4, Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.
func viTriDauTienSoLe(numberArray: [Int]) -> Int {
    var viTri = -1
    for i in 0..<numberArray.count{
        if numberArray[i]%2 == 1 {
            viTri = i
            break
        }
    }
    return viTri
}

func viTriChanCuoiCung(nummberArray: [Int]) -> Int {
    var viTri = -1
    for i in (0..<nummberArray.count).reversed() {
        if nummberArray[i-1]%2 == 0 {
            viTri = i
            break
        }
    }
    return viTri
}

func bai4VeNha() {
    print("dãy số là [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]")
    var numberArray: [Int] = []
    numberArray = [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]
    print("vị trí số lẻ đàu tiên là: \(viTriDauTienSoLe(numberArray: numberArray))")
    print("Vị trí số chắn cuối cùng là: \(viTriChanCuoiCung(nummberArray: numberArray))")
}

//5, In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)
func reverseString (_input: String) -> String{
    return ""
}

//6, Đưa ra: phần tử lớn nhất, phần tử bé nhất, trun của một dãy số cho trước
func trungBinhCong(nummberArray: [Int]) -> Int {
    var trungBinhCong
    for i in numberArray {
        trungBinhCong = trungBinhCong + i
    }
    return trungBinhCong / numberArray.count
}

func bai6veNha() {
    print("dãy số là [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]")
    var numberArray: [Int] = []
    numberArray = [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]
    let ketQua = timMaxMin(numberArray: numberArray)
    print("Giá trị lớn nhất là: \(ketQua["Max"]!)")
    print("Giá trị nhỏ nhất là: \(ketQua["Min"]!)")
    print("Trung bình cộng của cả dãy số là : \(trungBinhCong(numberArray))")
}
