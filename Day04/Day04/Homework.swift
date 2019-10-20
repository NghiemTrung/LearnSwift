//
//  Homework.swift
//  Day04
//
//  Created by Trung on 10/19/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

func bai2(){
    print("Nhập vào số nguyên dương nhỏ hơn 10000 ")
    var n = Int(readLine()!)!
    
    var numbers: [Int] = []
    if n < 1 || n > 10000{
        bai2()
    }
    
    
    while n > 0{
        if !numbers.contains(docChuSo(n: n)){ // hàm contains để kiểm tra trong mảng có phần tử đó chưa
        numbers.append(docChuSo(n: n))
        }
        n = n / 10
    }
    
    numbers.sort() // hàm sắp xếp của mảng
    
    if numbers.count >= 2{
        print("Số lớn thứ 2 là \(numbers[numbers.count - 2])")
    } else if numbers.count == 1 {
        print("Số lớn thứ 2 là \(numbers[0])")
    }
}

func docChuSo(n: Int) -> Int{
        return n % 10
}



