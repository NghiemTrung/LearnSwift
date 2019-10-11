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
    let radius: Double = Double(readLine()!)!
    print("Dien tich hinh cau la: \(DienTichHinhCau(radius: radius)) don vi dien tich")
    print("The tich hinh cau la: \(TheTichHinhCau(radius: radius)) don vi the tich")
}

func DienTichHinhCau(radius : Double) -> Double {
    return 4*3.1415*pow(radius, 2)
}

func TheTichHinhCau(radius : Double) -> Double {
    return (4/3)*3.1415*pow(radius, 3)
}

//--------------Bai 2--------------
//Tính tổng bình phương 2 số a, b (a, b nhập từ bàn phím)
func TongBinhPhuong2So(a: Double, b: Double) -> Double {
    return (a*a)+(b*b)
}

func Bai2() {
    print("--------------Bai 2--------------")
    print("Tính tổng bình phương 2 số a, b (a, b nhập từ bàn phím)")
    print("Nhap so thu nhat: ")
    let a = Double(readLine()!)!
    print("nhap so thu hai:")
    let b = Double(readLine()!)!
    print("Tong binh phuon 2 so vua nhap la \(TongBinhPhuong2So(a: a, b: b))")
}

//----------------Bai 3----------------
//  Viết chương trình nhập vào số nguyên n. Kiem tra:
//  - n là số nguyên dương hay không?
//  - n có phải là số chẵn hay không?
//  - n có chia hết cho 5 hay không?
//  - n có phải là số nguyên tố hay không?

func KiemTraNguyeDuong(n: Int) -> String {
    if (n>0) {
        return "\(n) la so nguyen duong"
    } else {
        return "\(n) khong phai so nguyen duong"
    }
}

func KiemTraChanLe(n:Int)->String{
    if (n%2==0) {
        return "\(n) la so chan"
    } else {
        return "\(n) la so le"
    }
}

func KiemTraChiaHetCho5(n:Int) -> String {
    if (n%5==0) {
        return "\(n) chia het cho 5"
    } else {
        return "\(n) khong chia het cho 5"
    }
}

func KiemTraSoNguyenTo(n:Int,t:Int) -> String {
    if ((t*t)>n) {
        return "\(n) la so nguyen to"
    } else if (n%t==0) {
        return "\(n) khong phai so nguyen to"
    } else {
        return KiemTraSoNguyenTo(n: n, t: t+1)
    }
}

func Bai3(){
    print("----------------Bai 3----------------")
    print("Viết chương trình nhập vào số nguyên n. Kiem tra:")
    print("- n là số nguyên dương hay không?")
    print("- n có phải là số chẵn hay không?")
    print("- n có chia hết cho 5 hay không?")
    print("- n có phải là số nguyên tố hay không?")
    print("Nhap so can kiem tra: " )
    let n: Int = Int(readLine()!)!
    print(KiemTraNguyeDuong(n: n))
    print(KiemTraChanLe(n: n))
    print(KiemTraChiaHetCho5(n: n))
    print(KiemTraSoNguyenTo(n: n, t: 2))
}

//----------------Bai 4----------------
//  Cho 2 số a và b, kiểm tra xem a có chia hết cho b không?

func Bai4 () {
    print ("----------------Bai 4----------------")
    print ("Cho 2 số a và b, kiểm tra xem a có chia hết cho b không?")
    print("Nhap so a:")
    let a: Int = Int(readLine()!)!
    print("Nhap so b:")
    let b: Int = Int(readLine()!)!
    if (a%b==0) {
        print("\(a) chia het cho \(b)")
    } else {
        print("\(a) khong chia het duoc cho \(b)")
    }
}

//----------------Bai 5----------------
//  Tìm giá trị lớn nhất của 2 số

func Bai5 () {
    print("----------------Bai 5----------------")
    print("Tìm giá trị lớn nhất của 2 số")
    print("Nhap so a:")
    let a: Double = Double(readLine()!)!
    print("Nhap so b:")
    let b: Double = Double(readLine()!)!
    if (a>b) {
        print("\(a) la gia tri lon nhat trong 2 so")
    } else {
        print("\(b) la gia tri lon nhat trong 2 so")
    }
}

//---------------Bai 6----------------
//  giải phương trình bậc nhất

func GiaiPhuongTrinhBacNhat(a:Double,b:Double) -> String {
    if (a==0 && b==0) {
        return "Phuong trinh \(a)x + \(b) = 0 co vo so nghiem"
    } else if(a==0){
        return "Phuong trinh \(a)x + \(b) = 0 khong co nghiem"
    } else {
        return "Nghiem cua phuong trinh \(a)x + \(b) = 0 la \(-b)/a)"
    }
}

func Bai6() {
    print("---------------Bai 6----------------")
    print("giải phương trình bậc nhất dang ax + b=0")
    print("Nhap so a")
    let a: Double = Double(readLine()!)!
    print("Nhap so b")
    let b: Double = Double(readLine()!)!
    print(GiaiPhuongTrinhBacNhat(a: a, b: b))
}
