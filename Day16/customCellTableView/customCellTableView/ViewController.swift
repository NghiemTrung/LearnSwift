//
//  ViewController.swift
//  customCellTableView
//
//  Created by Trung on 12/31/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
        
    }()
    
    let idCell1 = "Cell1"
    let idCell2 = "Cell2"
    
    var foods: [Food] = []
    func setupData() {
        let food1 = Food(imageName: "cho.png", name: "Quan Hau", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        let food2 = Food(imageName: "ClockFace", name: "dong ho", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        let food3 = Food(imageName: "cho.png", name: "Quan Hau", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        let food4 = Food(imageName: "ClockFace", name: "Quan Hau", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        let food5 = Food(imageName: "cho.png", name: "Quan Hau", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        let food6 = Food(imageName: "ClockFace", name: "Quan Hau", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        let food7 = Food(imageName: "cho.png", name: "Quan Hau", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        let food8 = Food(imageName: "ClockFace", name: "Quan Hau", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non magna non est porta ultricies molestie vitae sapien. Maecenas interdum leo eu tincidunt sagittis. Ut ac placerat orci, a aliquam nunc. Nam blandit commodo turpis at elementum. Praesent id pellentesque odio. Curabitur gravida quam at luctus sagittis. In hac habitasse platea dictumst.", isSelected: false)
        foods = [food1,food2,food3,food4,food5,food6,food7,food8]
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupData()
        setupLayout()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //register cell with UI
        tableView.register(UINib(nibName: "CustomCell1", bundle: nil), forCellReuseIdentifier: idCell1)
        
        //registercellwithout UI
        tableView.register(customCell2.self, forCellReuseIdentifier: idCell2)
    }
    
    func setupLayout() {
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0 {
            return foods.count
        } else{
            return 15
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: idCell1, for: indexPath) as! CustomCell1
            //do du lieu
//            cell.PhotoImageView.image = UIImage(named: foods[indexPath.row].imageName)
//            cell.nameLabel.text = foods[indexPath.row].name
//            cell.descriptionLabel.text = foods[indexPath.row].description
//            cell.checkImageView.image = UIImage(named: foods[indexPath.row].isSelected ? "tick" : "tick")
            
            cell.food = foods[indexPath.row]
            cell.passAction={ [weak self] in
                guard let strongSelf = self else { return }
                strongSelf.foods[indexPath.row].isSelected.toggle()
                strongSelf.tableView.reloadData()
            }
            return cell
        } else{
            let cell = tableView.dequeueReusableCell(withIdentifier: idCell2, for: indexPath) as! customCell2
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.section == 0 {
//            return 80
//        } else {
//            return 100
//        }
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Cell with xib file"
        } else{
            return "Cell without xib file"
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            foods.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .normal, title: "Delete"){
            [weak self](_, _) in
            guard let strongSelf = self else { return }
            strongSelf.foods[indexPath.row].isSelected.toggle()
            strongSelf.tableView.reloadData()
        }
        let edit = UITableViewRowAction(style: .normal, title: "Edit"){
            [weak self](_, _)
            in
            guard let _ = self else {return}
        }
        
        return [delete,edit]
    }
}

