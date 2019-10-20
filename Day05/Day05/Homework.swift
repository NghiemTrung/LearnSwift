//
//  Homework.swift
//  Day05
//
//  Created by Trung on 10/21/19.
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

func InputIntFromKeyboradNotLessThan(Min: Int) -> Int{
    let _input = InputFromKeyboardInt()
    while (_input<Min) {
        print("Số cần nhập phải lớn hơn hoặc bằng: \(Min)")
        return InputIntFromKeyboradNotLessThan(Min: Min)
    }
    return _input
}

//1, Vẽ hình chữ nhật đặc
func veHinhChuNhatDac(Cao: Int, Rong: Int) {
    var veDong: String = ""
    for i in 1...Cao {
        for j in 1...Rong{
            veDong = veDong + " *"
        }
        print(veDong)
        veDong = ""
    }
}

func Bai01veNha() {
    print("1, Vẽ hình chữ nhật đặc")
    print("Nhap chieu cao: ")
    let chieuCao = InputIntFromKeyboradNotLessThan(Min: 2)
    print("Nhap chieu rong: ")
    let chieuRong = InputIntFromKeyboradNotLessThan(Min: 2)
    veHinhChuNhatDac(Cao: chieuCao, Rong: chieuRong)
}


//2, Vẽ hình chữ nhật rỗng:
func veHinhChuNhatRong(Cao: Int, Rong: Int) {
    var veDong: String = ""
    for i in 1...Cao {
        for j in 1...Rong{
            if (i==1||j==1||i==Cao||j==Rong) {
                veDong = veDong + " *"
            } else {
                veDong = veDong + "  "
            }
        }
        print(veDong)
        veDong = ""
    }
}

func Bai02veNha() {
    print("2, Vẽ hình chữ nhật rỗng")
    print("Nhap chieu cao: ")
    let chieuCao = InputIntFromKeyboradNotLessThan(Min: 2)
    print("Nhap chieu rong: ")
    let chieuRong = InputIntFromKeyboradNotLessThan(Min: 2)
    veHinhChuNhatRong(Cao: chieuCao, Rong: chieuRong)
}


//3, Vẽ tam giác vuông:
func veHinhTamGiacVuong(Cao: Int) {
    var veDong = ""
    for i in 1...Cao {
        for j in 0..<i{
            veDong = veDong + " *"
        }
        print(veDong)
        veDong = ""
    }
}


func Bai03veNha() {
    print("3, Vẽ tam giác vuông:")    
    print("Nhap chieu cao: ")
    let chieuCao = InputIntFromKeyboradNotLessThan(Min: 2)
    veHinhTamGiacVuong(Cao: chieuCao)
}

//4, Vẽ tam giác cân ngược
func veHinhTamGiacCanNguoc(Cao: Int) {
    var veDong = ""
    for i in 1...(Cao) {
        for j in 1...(2*Cao-i){
            if (i<=j) {
                veDong = veDong + " *"
            } else {
                veDong = veDong + "  "
            }
        }
        print(veDong)
        veDong = ""
    }
}

func Bai04veNha() {
    print("4, Vẽ tam giác cân ngược:")    
    print("Nhap chieu cao: ")
    let chieuCao = InputIntFromKeyboradNotLessThan(Min: 2)
    veHinhTamGiacCanNguoc(Cao: chieuCao)
}


//5, Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: 
// “Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1.
// Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???”. 
// Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú bé 1 tay với. 
// In ra đáp án hoặc “-1” nếu ko có số nào hợp lệ.

func demSoPhepTinh(soNhapVao: Int) -> Int {
    if (soNhapVao==1){
        return 0
    } else if (soNhapVao%2==0) {
        return 1+demSoPhepTinh(soNhapVao: soNhapVao/2)
    } else {
        return 1+demSoPhepTinh(soNhapVao: (soNhapVao*3)+1)  
    }
}


func Bai05veNha() {
    print("""
        5, Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: 
        'Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1.
        Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???'. 
        Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú cừu em 1 tay với. 
        In ra đáp án hoặc '-1' nếu ko có số nào hợp lệ.
        """)
    print("Nhập số cần đếm số phép tính")
    let soNhapVao = InputFromKeyboardInt()
    print("Số phép tính phải làm là: ", terminator: "")
    var dapAn = 0
    if (soNhapVao == 1) {
        dapAn = dapAn + 1 + demSoPhepTinh(soNhapVao: 4)
    } else if (soNhapVao < 1) {
        dapAn = -1
    } else {
        dapAn = dapAn + demSoPhepTinh(soNhapVao: soNhapVao)
    }
    print("\(dapAn)")
}

