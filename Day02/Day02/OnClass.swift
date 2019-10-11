//
//  OnClass.swift
//  Day02
//
//  Created by Trung on 10/11/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

func Xeploai() {
    print("Nhập vào điểm trung bình: ")
    let DiemTB = Float(readLine()!)!
    switch DiemTB {
    case 0..<5:
        print("Trung Binh")
    case 5..<8:
        print("Kha")
    case 8...10:
        print("Gioi")
    default:
        print("Nhập trong khoảng 1 đến 10")
        Xeploai()
    }
}

//Sa = sqrt(p.(p-a).(p-b).(p-c))
//func KiemTra3Canh() {
//    <#function body#>
//}

func InSoTrongKhoang(){
    //Vong Lap For
    for i in 0...10 {
        print("\(i) ", terminator: "")
    }
    print("")
    //Vong lap While
    var n = 0
    while n<10 {
        print("\(n) ",  terminator: "")
        n += 1
    }
    print("")
}
