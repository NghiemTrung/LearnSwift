//
//  Homework.swift
//  Day02
//
//  Created by Trung on 10/12/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

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
    print("Nhập số thứ nhât:")
    let a = Int(readLine()!)!
    print("Nhập số thứ hai:")
    let b = Int(readLine()!)!
    print("Nhập số thứ ba:")
    let c = Int(readLine()!)!
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
    let a = Int(readLine()!)!
    print("Nhập độ dài cạnh b: ")
    let b = Int(readLine()!)!
    print("Nhập độ dài cạnh c: ")
    let c = Int(readLine()!)!
    //gọi hàm
    KiemTraVaDienTichTamGiac(a: a, b: b, c: c)
}


//7, Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không
//
//8, Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
//- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
//- Hãy in ra theo dạng “Giờ : Phút : Giây”
//
//9, Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).
