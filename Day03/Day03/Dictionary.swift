//
//  Dictionary.swift
//  Day03
//
//  Created by Trung on 10/12/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import Foundation

func ViDuTrenLop() {

    print("Bài tập về Dictrionary")
    //Tạo dict rỗng
    var dictionary1 = [String: String]()
    var dictionary2 = [Int:String]()
    
    //tao mang 2 phan tu
    var airports: [String: String] = ["NoiBai": "Hà Nội", "SaoVang": "Thanh Hoá"]
    
    //duyet dict
    for item in airports{
        print("Key: \(item.key) - value: \(item.value)")
    }
    
    //duyet theo key
    for key in airports.keys{
        print("Key: \(key) - value: \(airports[key])")
    }
    
    //duyet theo value
    for value in airports.values{
        print(value)
    }
    
    //them phan tu
    airports["TanSonNhat"] = "Sài Gòn"
    print(airports)
    
    //xoá phần tử
    airports.removeValue(forKey: "TanSonNhat")//xoá theo key
    print(airports)
    airports.removeAll()//xoá hết
    print(airports)
    
    airports = ["NoiBai": "Hà Nội", "SaoVang": "Thanh Hoá"]
    
    
}
