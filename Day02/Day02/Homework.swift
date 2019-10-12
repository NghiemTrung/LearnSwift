//
//  Homework.swift
//  Day02
//
//  Created by Trung on 10/12/19.
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

//----------------Bai 1----------------
//5, Viết chương trình nhập vào 3 số nguyên a, b, c. Tìm, in ra số lớn nhất, số bé nhất.

func TimMaxMin(a: Int,b:Int,c:Int) {
    var Max : Int?
    var Min : Int?
    
    //tìm số lớn nhất
    if (a>b && a>c) {
        Max = a
    } else if (b>c) {
        Max = b
    } else {
        Max = c
    }
    
    //tìm số nhỏ nhất
    if (a<b && a<c) {
        Min = a
    } else if (b<c) {
        Min = b
    } else {
        Min = c
    }
    
    print("Số lớn nhất là: \(Max!)")
    print("Số nhỏ nhất là: \(Min!)")
}

func Bai05() {
    print("""
        ----------------Bai 1----------------
        5, Viết chương trình nhập vào 3 số nguyên a, b, c. Tìm, in ra số lớn nhất, số bé nhất.
        """)
    print("Nhập số thứ nhât:")
    let a = InputFromKeyboardInt()
    print("Nhập số thứ hai:")
    let b = InputFromKeyboardInt()
    print("Nhập số thứ ba:")
    let c = InputFromKeyboardInt()
    //chạy hàm tìm Max Min
    TimMaxMin(a: a, b: b, c: c)
}

//----------------Bai 6---------------
//6, Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
//- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
//- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”

func KiemTraVaDienTichTamGiac(a: Int,b:Int,c:Int) {
    // đổi sang dạng Double
    let _a = Double(a)
    let _b = Double(b)
    let _c = Double(c)
    
    //tính nửa chu vi
    let p = (_a+_b+_c)/2
    //bình phương diện tích
    let DienTich = p*(p-_a)*(p-_b)*(p-_c)
    //Kiểm tra và tính diện tích tam giác rồi xuất ra màn hình
    if DienTich > 0 {
        print("""
            Bộ 3 số (\(a),\(b),\(c)) là 3 cạnh của một tam giác
            Tam giác tạo ra có diện tích là \(sqrt(DienTich)) đơn vị diện tích
            """)
    } else {
        print("Bộ 3 số (\(a),\(b),\(c)) không phải là 3 cạnh của một tam giác")
    }
}

func Bai06() {
    print("""
        ----------------Bai 6---------------
        6, Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
        - Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
        - Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”
        """)
    //Nhập liệu
    print("Nhập độ dài cạnh a: ")
    let a = InputFromKeyboardInt()
    print("Nhập độ dài cạnh b: ")
    let b = InputFromKeyboardInt()
    print("Nhập độ dài cạnh c: ")
    let c = InputFromKeyboardInt()
    //gọi hàm
    KiemTraVaDienTichTamGiac(a: a, b: b, c: c)
}

//----------------Bai 7----------------
//7, Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không
func KiemTraNamNhuan(Nam: Int){
    if (Nam % 100==0) {
        if Nam%400==0 {
        print("Năm \(Nam) là năm nhuận")
        } else {
            print("Năm \(Nam) không phải là năm nhuận")
        }
    } else if(Nam%4==0) {
        print("Năm \(Nam) là năm nhuận")
    } else {
        print("Năm \(Nam) không phải là năm nhuận")
    }
}

func Bai07() {
    print("""
        ----------------Bai 7----------------
        7, Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không
        """)
    print("Nhập năm cần kiểm tra")
    let Nam = InputFromKeyboardInt()
    KiemTraNamNhuan(Nam: Nam)
    
}

//----------------Bai 8----------------
//8, Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
//- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
//- Hãy in ra theo dạng “Giờ : Phút : Giây”

func Bai08() {
    print("""
        ----------------Bai 8----------------
        8, Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
        - Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
        - Hãy in ra theo dạng “Giờ : Phút : Giây”
        """)
    //nhập liệu
    print("Nhập giờ:")
    var _Gio = InputIntFromKeyboradWithinRange(Begin: 0, End: 23)
    print("Nhập phút: ")
    var _Phut = InputIntFromKeyboradWithinRange(Begin: 0, End: 59)
    print("Nhập giây:")
    var _Giay = InputIntFromKeyboradWithinRange(Begin: 0, End: 59)
    print("Nhập số X")
    var X = InputIntFromKeyboradWithinRange(Begin: 0, End: 10000)
    
    var ChuyenDoiRaGiay = _Gio*60*60 + _Phut*60 + _Giay
    ChuyenDoiRaGiay += X
    
    let _InRa = "\(X) giây từ thời điểm \(_Gio):\(_Phut):\(_Giay) là: "
    
    //Chuyển lại về giờ
    X = ChuyenDoiRaGiay/(60*60*24)
    ChuyenDoiRaGiay -= X*60*60*24
    _Gio = ChuyenDoiRaGiay/(60*60)
    ChuyenDoiRaGiay -= _Gio*60*60
    _Phut = ChuyenDoiRaGiay/60
    ChuyenDoiRaGiay -= _Phut*60
    _Giay = ChuyenDoiRaGiay
    
    //in ra kết quả
    if X>0 {
        print(_InRa + "\(_Gio):\(_Phut):\(_Giay) ngày hôm sau")
    } else {
        print(_InRa + "\(_Gio):\(_Phut):\(_Giay)")
    }
    
}

//9, Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).

