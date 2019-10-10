//
//  main.swift
//  Day01
//
//
//  Created by Trung on 10/9/19.
//  Copyright © 2019 Trung. All rights reserved.
//
//  Bài tập về nhà lớp di động Ngày 01

import Foundation

//  Chọn bài tập từ các lựa chọn
func ChonBaiTap () {
    print("moi lua chon cac bai tap bang cach nhap tu ban phim so thu tu bai tap do")
    print("1. Bai tap 1")
    print("2. Bai tap 2")
    print("3. Bai tap 3")
    print("4. Bai tap 4")
    print("5. Bai tap 5")
    print("6. Bai tap 6")
    print("lua chon cua ban la: ", terminator: "")
    let LuaChon: Int = Int(readLine()!)!

    if (LuaChon == 1){
        Bai1()
        TiepTucChonBaiTap()
    } else if (LuaChon == 2){
        Bai2()
        TiepTucChonBaiTap()
    } else if (LuaChon == 3){
        Bai3()
        TiepTucChonBaiTap()
    } else if (LuaChon == 4){
        Bai4()
        TiepTucChonBaiTap()
    } else if (LuaChon == 5){
        Bai5()
        TiepTucChonBaiTap()
    } else if (LuaChon == 6){
        Bai6()
        TiepTucChonBaiTap()
    } else {
        print("Xin nhap cac so tu 1 den 6")
        ChonBaiTap()
    }
}

func TiepTucChonBaiTap() {
    print("Co muon tiep tuc kiem tra cac bai tap? (C/k):", terminator: "")
    let TiepTuc = readLine()!
    if (TiepTuc.lowercased() == "c") {
        ChonBaiTap()
    } else if (TiepTuc.lowercased() == "k"){
        print("Tam Biet")
    } else {
        TiepTucChonBaiTap()
    }
}

ChonBaiTap()
