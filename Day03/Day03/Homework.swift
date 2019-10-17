//
//  Homework.swift
//  Day03
//
//  Created by Trung on 10/16/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

// Function nhập số nguyên từ bàn phím
func InputFromKeyboardInt() -> Int {
    var _input: Int?
    _input = Int(readLine()!)
    guard let _output = _input else {
        print("Nhập số nguyên please!!!!")
        return InputFromKeyboardInt()
    }
    return _output
}
// function nhập số nguyên trong một khoảng
func InputIntFromKeyboradWithinRange(Begin: Int, End: Int) -> Int {
    let _input = InputFromKeyboardInt()
    while _input<Begin || _input>End {
        print("Số nhập vào phải nằm trong khoảng từ \(Begin) đến \(End)")
        return InputIntFromKeyboradWithinRange(Begin: Begin, End: End)
    }
    return _input
}

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

func viTriChanCuoiCung(numberArray: [Int]) -> Int {
    var viTri = -1
    for i in (0..<numberArray.count).reversed() {
        if numberArray[i-1]%2 == 0 {
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
    print("Vị trí số chắn cuối cùng là: \(viTriChanCuoiCung(numberArray: numberArray))")
}

//5, In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)
func reverseString (_input: String) -> String{
    var daoChuoi: [Character] = []
    // cách 1
    for i in _input{
        daoChuoi.insert(i, at: 0)
    }
    
    return String(daoChuoi)
}

func Bai5veNha() {
    print("5, In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)")
    
}

//6, Đưa ra: phần tử lớn nhất, phần tử bé nhất, trun của một dãy số cho trước
func trungBinhCong(numberArray: [Int]) -> Int {
    var trungBinhCong = 0
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
    print("Trung bình cộng của cả dãy số là : \(trungBinhCong(numberArray: numberArray))")
}

//7, Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)
func Bai07veNha() {
    print("7, Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)")
    print("Nhập chiều cao")
    let chieuCao = InputIntFromKeyboradWithinRange(Begin: 2, End: 50)
    var s : [Character] = []
    for i in 1...chieuCao{
        s.append(" ")
    }
    for i in 1...chieuCao{
        for t in 1...i{
            s[chieuCao-t]="*"
        }
        if (i>1){
            s.append("*")
        }
        print(String(s))
    }
}

func veChuX (){
    print("Nhập chiều cao h (h > 1 và h lẻ):")
    let h = Int(readLine()!)!
    
    if h < 0 || h % 2 == 0 {
        print("Chiều cao không hợp lệ")
        veChuX()
    } else {
        for i in 0..<h {
            for j in 0..<h {
                if i==j || i+j==h-1 {
                    print("*" , terminator:"")
                }
                else {
                    print(" ", terminator:"")
                }
            }
            print()
        }
    }
}
