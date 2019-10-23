//
//  main.swift
//  Day05
//
//  Created by Trung on 10/21/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

print("Hello, World!")

//  Chọn bài tập từ các lựa chọn
func ChonBaiTap () {
    print("moi lua chon cac bai tap bang cach nhap tu ban phim so thu tu bai tap do")
    print("1. Bai tap 1")
    print("2. Bai tap 2")
    print("3. Bai tap 3")
    print("4. Bai tap 4")
    print("5. Bai tap 5")
    print("lua chon cua ban la: ", terminator: "")
    let LuaChon: Int = Int(readLine()!)!

    if (LuaChon == 1){
        Bai01veNha()
        TiepTucChonBaiTap()
    } else if (LuaChon == 2){
        Bai02veNha()
        TiepTucChonBaiTap()
    } else if (LuaChon == 3){
        Bai03veNha()
        TiepTucChonBaiTap()
    } else if (LuaChon == 4){
        Bai04veNha()
        TiepTucChonBaiTap()
    } else if (LuaChon == 5){
        Bai05veNha()
        TiepTucChonBaiTap()
    } else {
        print("Xin nhap cac so tu 1 den 5")
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

//ChonBaiTap()

for i in 1...1024{
    print("\(demSoPhepTinh(soNhapVao: i))")
}

