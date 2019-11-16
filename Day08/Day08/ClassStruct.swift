//
//  ClassStruct.swift
//  Day08
//
//  Created by Trung on 10/28/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

struct Animal {
    var name: String = "Cho"
    var furColor: String = "Canh gian"
    var feet: Int = 0
    
    init() {
    }
    
    init(name: String, color: String, feet: Int) {
        self.name = name
        self.furColor = color
        self.feet = feet
    }
}

struct Rectangle {
    var Witdh: Int = 1
    var Height: Int = 1
    
    init() {
        
    }
    
    init(width: Int, height: Int) {
        self.Witdh = width
        self.Height = height
    }
    
    func area() -> Int {
        return Witdh*Height
    }
    
    mutating func scale(value: Int) -> Int{
        self.Height *= value
        self.Witdh *= value
        return self.area()
    }
}

func onClass() {
    var rec1 = Rectangle()
    print(rec1.area())
    
    var rec2 = Rectangle(width: 2, height: 2)
}

class Car {
    var name: String
    let wheel: Int
    
    init(n: String, w: Int) {
        self.name = n
        self.wheel = w
    }
    
    func Run() -> String {
        return "xe chạy"
    }
}


struct cuocTaxi {
    var soKm: Float=0
    
    func tinhTienTaxi() -> Float{
        var soTien: Float = 0
        switch soKm {
        case 31...:
            soTien+=(soKm-31)*(3000-4000)
            fallthrough
        case 1..<31:
            soTien+=(soKm-1)*(4000-5000)
            fallthrough
        default:
            soTien += (soKm>1) ? 5000*soKm : 5000
        }
        return soTien
    }
}

func thongKeCuocTaxi(){
    let cuoc1 = cuocTaxi(soKm: 32)
    let cuoc2 = cuocTaxi(soKm: 65)
    let cuoc3 = cuocTaxi(soKm: 2)
    let cuoc4 = cuocTaxi(soKm: 6)
    let cuoc5 = cuocTaxi(soKm: 15)
    
    let cuocs = [cuoc1,cuoc2,cuoc3,cuoc4,cuoc5]
    
    for (index,cuoc) in cuocs.enumerated() {
        print("so tien di ngay \(index+1)(\(cuoc.soKm)) la \(cuoc.tinhTienTaxi())")
    }
}
