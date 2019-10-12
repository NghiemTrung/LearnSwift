//
//  main.swift
//  Day02
//
//  Created by Trung on 10/11/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

//var y: Int?
//let x: Int!
//
////
//func checkGurafEls(){
//    guard let a = y else {
//        print("y: \(y)")
//        return
//    }
//    print(a)
//}
//
//checkGurafEls()
//
//func checkIfLet() {
//    if let a = y {
//        print(a)
//        print("+++++++++++")
//    } else {
//        print("y: \(y)")
//    }
//}
//checkIfLet()
//
//func checkSwitch() {
//     // khai báo biến option
//    let option = 15
//    switch option {
//    case 0...10:
//        print("Case 0...10")
//        // fallthrough: Thực thi trường hợp tiếp theo
////        fallthrough
//    case 11...20:
//        print("Case 11...20")
//        // fallthrough: Thực thi trường hợp tiếp theo
////        fallthrough
//    case 21...30:
//        print("Case 21...30")
//    default:
//        print("Default case")
//    }
//}
//
//checkSwitch()
//Xeploai()
//InSoTrongKhoang()

//  Chọn bài tập từ các lựa chọn
func ChonBaiTap () {
    print("moi lua chon cac bai tap bang cach nhap tu ban phim so thu tu bai tap do")
    print("5. Bai tap 5")
    print("6. Bai tap 6")
    print("7. Bai tap 7")
    print("8. Bai tap 8")
    print("9. Bai tap 9")
    print("lua chon cua ban la: ", terminator: "")
    let LuaChon = InputIntFromKeyboradWithinRange(Begin: 5, End: 9)

    switch LuaChon {
    case 5:
        Bai05()
        TiepTucChonBaiTap()
    case 6:
        Bai06()
        TiepTucChonBaiTap()
    case 7:
        Bai07()
        TiepTucChonBaiTap()
    case 8:
        Bai08()
        TiepTucChonBaiTap()
    case 9:
        Bai09()
        TiepTucChonBaiTap()
    default:
        TiepTucChonBaiTap()
        break
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
