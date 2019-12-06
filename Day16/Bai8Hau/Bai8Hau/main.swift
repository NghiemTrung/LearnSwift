//
//  main.swift
//  Bai8Hau
//
//  Created by Trung on 11/26/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

print("Hello, World!")
	
var a = [0, 0, 0, 0, 0, 0, 0, 0, 0]
func isSafe(_ x2: Int,_ y2: Int) -> Bool {
    //kiểm tra cách đặt có thỏa mãn không
    for i in 1..<x2{
        
        if(a[i] == y2 || abs(i-x2) == abs(a[i] - y2) ){
            return false;
        }
    }
    //Nếu kiểm tra hết các trường hợp vẫn không sai thì trả về true
    return true
}

func printEightQueen(_ n: Int){
    //in ra một kết quả
    for i in 1...n{
        print(" \(a[i])", terminator: "")
    }
    print()
}

func placeQueen(_ i: Int,_ n: Int){
    for j in 1...n{
        // thử đặt quân hậu vào các cột từ 1 đến n
        if isSafe(i,j){
            //nếu cách đặt này thỏa mãn thì lưu lại vị trí
            a[i] = j;
            //nếu đặt xong quân hậu thứ n thì xuất ra một kết quả
            if i==n {
                printEightQueen(n)
            }
            placeQueen(i+1,n)
        }
    }
}

var n = 8
placeQueen(1,n);
