//
//  BanCoViewController.swift
//  GiaoDienAppDemo
//
//  Created by Trung on 11/26/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class BanCoViewController: UIViewController {
    
    let kichThuocBanCo = 8
    
    var screenHeight: CGFloat=0
    var screenWidth:CGFloat=0
    var squareWidth:CGFloat=0
    var margin:CGFloat=5
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupControls()
        putQueen(row: 1)
        
        for queenPosition in queens[1]{
            placeQueen(isHas: true, row: queenPosition.row-1, col: queenPosition.col-1)
        }
    }
    
    func drawSquare(isWhite: Bool, width: CGFloat, row: Int,Column:Int) {
        func computePositionOfSquare(row: Int,column:Int,_squareWidth:CGFloat) -> CGRect {
            return CGRect(x: margin + CGFloat(column)*_squareWidth, y: 64+margin+CGFloat(row)*_squareWidth, width: _squareWidth, height: _squareWidth)
        }
        
        let square = UIView(frame: computePositionOfSquare(row: row, column: Column, _squareWidth: squareWidth))
        square.backgroundColor = isWhite ? UIColor.white : UIColor.black
        self.view.addSubview(square)
    }
    
    func setupControls() {
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.width
        squareWidth = (self.view.bounds.width-margin*2) / CGFloat(kichThuocBanCo)
        
        for row in 0..<kichThuocBanCo {
            for column in 0..<kichThuocBanCo {
                let isWhiteSquare = (row + column)%2==1
                drawSquare(isWhite: isWhiteSquare, width: squareWidth, row: row, Column: column)
            }
        }
    }
    
    
    class Queen {
        var row: Int
        var col: Int
        
        init(row: Int, col: Int) {
            self.row = row
            self.col = col
        }
    }
    
    var images: [UIImageView] = [] // mảng images để lưu tập hợp ảnh queen cho mỗi trường hợp
    
    // mảng arrays để lưu bộ vị trí thoả mãn của mỗi trường hợp,
    var arrays = Array(repeating: 0, count: 9)
    
    // mảng queens chứa các trường hợp có thể đặt n quân hậu trên bàn cờ
    var queens = [[Queen]]()
    
    var index = 0
    var total = 0 // tổng tất cả các trường hợp tìm được
    
    // vị trí đặt cờ
    func placeQueen(isHas: Bool, row: Int, col: Int) {
        let queen = UIImageView(image: UIImage(named: "queen"))
        if isHas {
            print(squareWidth)
            queen.frame = CGRect(x: margin + CGFloat(col)*squareWidth, y:64 + margin + CGFloat(row)*squareWidth, width: squareWidth, height: squareWidth)
            queen.contentMode = .scaleAspectFit
            images.append(queen)
            self.view.addSubview(queen)
        }
    }

    // đi đặt quân hậu vào từng vị trí,
    func putQueen(row: Int){
        // đi lần lượt các cột từ 1 đến n
        for col in 1...kichThuocBanCo{
            // ở mỗi cột thì kiểm tra các hàng,
            if isSafe(row: row, col: col){
                // nếu toạ độ hàng và cột thoả mãn thì lưu lại toạ độ đó
                arrays[row] = col
                if row == kichThuocBanCo {
                    // nếu đã duyệt hết hàng thì lưu lại kết quả đặt hậu
                    saveResult()
                }
                // sau khi lưu lại toạ độ thì sử dụng đệ quy gọi lại chính nó kiểm tra hàng tiếp theo
                putQueen(row: row+1)
            }
            // nếu toạ độ hàng cột không thoả mãn thì thực hiện vòng lặp tiếp theo
        }
    }
    
    // kiểm tra vị trí quân hậu đang đứng có an toàn không
    func isSafe(row: Int, col: Int) -> Bool {
        for i in 1..<row {
            // hàm abs là lấy trị tuyệt đối
            // nếu quân hậu đang kiểm tra nằm trên cột hoặc đường chéo chứa quân hậu khác thì return false
            if arrays[i] == col || abs(i-row) == abs(arrays[i]-col) {
                return false
            }
        }
        return true
    }

    // lưu kết quả 8 quân hậu vào mảng queens
    func saveResult(){
        var objects = [Queen]()
        var row = 1
        for col in 1...kichThuocBanCo {
            objects.append(Queen(row: row, col: arrays[col]))
            row += 1
        }
        
        queens.append(objects)
    }}

    // hàm xử lý cử chỉ (thao tác, hành động) với đối tượng bàn cờ
    func gestureWithChessBoard(){
        // hành động vuốt trên điện thoại được gọi là swipe
        // có 4 hướng vuốt là trái, phải, trên, dưới
        // ở đây chúng ta đề cập đến vuốt trái, phải màn hình
        
        // Khai báo một biến swipeRight kiểu UISwipeGestureRecognizer để nhận dạng hành động vuốt
        let swipeRight = UISwipeGestureRecognizer(target: BanCoViewController.self, action:#selector(swiped))
        // Xác định hướng vuốt
        swipeRight.direction = .right
        // view.addGestureRecognizer để xác định hành động swipeRight sử dụng cho đối tượng view
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target:BanCoViewController.self, action:#selector(swiped))
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    @objc func swiped(gesture: UIGestureRecognizer) {
        // if let để kiểm tra nếu có hành động vuốt thì sẽ gán nó bằng biến swipeGesture và xử lý hành động bên trong
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            // kiểm tra hướng vuốt để xác định xử lý
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                swipeRight()
            case UISwipeGestureRecognizer.Direction.left:
                swipeLeft()
            default:
                break
            }
        }
    }
    
    func swipeRight() {
        print("swipe right")
        // xoá các con hậu đang nằm trên bàn cờ nếu có
        for image in images{
            image.removeFromSuperview()
        }
        
        index = index - 1
        if index < 0 {
            index = 0
        }
        
        if index > 0 && index < total{
            for i in queens[index]{
                placeQueen(isHas: true, row: i.row-1, col: i.col-1)
            }
        }
    }
    
    func swipeLeft() {
        print("swipe left")
        for image in images{
            image.removeFromSuperview()
        }
        index = index + 1
        if index > total {
            index = total
        }
        
        if index > 0 && index < total{
            for i in queens[index]{
                placeQueen(isHas: true, row: i.row-1, col: i.col-1)
            }
        }
    }

