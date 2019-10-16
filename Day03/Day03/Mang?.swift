//
//  Mang?.swift
//  Day03
//
//  Created by Trung on 10/12/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

func HocMang(){
    //Khai bao mang
    //MangRong
    var emptyString: [String] = []
    var emptyString1 = [String]()
    
    //Khai baor 1 mang String
    var names: [String] = ["tran","Huy","Trung","Quynh"]
    // dueyt mang
    for i in names{
        print(i)
    }
    
    //duyet kem index
    for (index, i) in names.enumerated(){
        print("\(index) \(i)")
    }
    
    //duyet mang lay index
    for i in 0..<names.count{
        print("\(i) \(names[i])")
    }
    
    //Them phan tu
    names.append("Them")//truyen them 1 phan tu
    names.append(contentsOf: ["An","Hanh"])//truyen vao mot mang
    
    print("------------------")
    print(names)//in mang
    
    // thay thế gias trị phần tử trong mảng
    names[1] = "Long"
    print(names)
    
    // xoá phần tử trong mảng
    //xoá theo index
    names.remove(at: 0)
    print(names)
    
    // xoá phần tử đầu tiên
    names.removeFirst()
    print(names)
    
    
    // xoá phần tử cuối cùng
    names.removeLast()
    print(names)
    
    // xoá tất cả các phần tử
    names.removeAll()
    print(names)

}

//Khai báo một mảng có 5 phần tử là các chuỗi
//- Chèn tên mới “Quang" vào vị trí 2.
//- Xóa tên ở cuối mảng
//- Khai báo biến t có giá trị là “Nhung”, kiểm tra xem biến t có trong mảng hay không ?
func bai1TrenLop(){
    var names: [String] = ["An","Long","Trang","Nam","Lam"]
    
    names.insert("Quang", at: 1)
    print(names)
    
    names.removeLast()
    print(names)
    
    let t = "Nhung"
    var z = 0
    for (index,i) in names.enumerated(){
        if t==i {
            z=index + 1
            break
        }
    }
    
    if z>0 {
        print("tim thay \(t) o vi tri \(z)")
    } else{
        print("khong tim thay duoc \(t)")
    }
}

//cho một mảng số nguyên
//kiểm tra có phần tử âm thì chuyển thành 0
func bai2TrenLop() {
    var numberArray: [Int] = []
    numberArray = [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]
    //kiểm tra số âm và thay thế
    for (index,i) in numberArray.enumerated(){
        if i<0 {
            numberArray[index] = 0
        }
    }
    print(numberArray)
}


//tìm số lớn nhất và nhỏ nhất
func timMaxMin(numberArray: [Int]) -> [String: Int]{
    //tìm số lớn nhất và nhỏ nhất
    // trong
    var Min = numberArray[0]
    var Max = numberArray[0]
    for i in numberArray{
        if (Min>i) {
            Min = i
        }
        if (Max<i) {
            Max = i
        }
    }
    return ["Max" : Max, "Min" : Min]
}

func bai3TrenLop() {
    print("dãy số là [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]")
    var numberArray: [Int] = []
    numberArray = [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]
    let ketQua = timMaxMin(numberArray: numberArray)
    print("Số lớn nhất trong dãy là: \(ketQua["Max"]!)")
    print("Số nhỏ nhất trong dãy là: \(ketQua["Min"]!)")
}
//Baif 4 tìm số lớn thứ 2 trong dãy
func tim2ndMax(numberArray: [Int]) -> Int {
    let ketQuaMaxMin = timMaxMin(numberArray: numberArray)
    var Max2nd = numberArray[0]
    for i in numberArray {
        if (i<ketQuaMaxMin["Max"]!){
            if Max2nd<i {
                Max2nd = i
            }
        }
    }
    return Max2nd
}

func bai4TrenLop() {
    print("dãy số là [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]")
    var numberArray: [Int] = []
    numberArray = [15,2,8,66,5,-55,88,-69,568,426,95,-658,-55,5,-9,-81]
    print("So lớn thứ nhì trong dãy là: \(tim2ndMax(numberArray: numberArray))")
}
