//
//  HomeWork.swift
//  Day01
//
//  Created by Trung on 10/9/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

// ----------------Bai 1----------------
//  Cho bán kính hình cầu, tính và in ra diện tích, thể tích của hình cầu đó.
//  Hướng dẫn: S = 4πR 2 và V = (4/3)πR 3
func Bai1 () {
    print("Nhap ban kinh hinh cau: ")
    var radius: Double = Double(readLine()!)!
    print("Dien tich hinh cau la: \(DienTichHinhCau(radius: radius)) don vi dien tich")
    print("The tich hinh cau la: \(TheTichHinhCau(radius: radius)) don vi the tich")
}

func DienTichHinhCau(radius : Double) -> Double {
    return 4*3.1415*radius
}

func TheTichHinhCau(radius : Double) -> Double {
    return (4/3)*3.1415*radius
}

//--------------Bai 2--------------
//Tính tổng bình phương 2 số a, b (a, b nhập từ bàn phím)
func TongBinhPhuong2So(a: Double, b: Double) -> Double {
    return (a*a)+(b*b)
}

func Bai2() {
    print("Nhap so thu nhat: ")
    var a = Double(readLine()!)!
    print("nhap so thu hai:")
    var b = Double(readLine()!)!
    print("Tong binh phuon 2 so vuwa nhap la \(TongBinhPhuong2So(a: a, b: b))")
}

//----------------Bai 3----------------
