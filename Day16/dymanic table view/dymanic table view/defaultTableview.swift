//
//  defaultTableview.swift
//  dymanic table view
//
//  Created by Trung on 12/24/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class defaultTableview: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var animal: [Animal]?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "default Dynamic"
        configTable()
        setData()
    }

    func configTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setData() {
        animal = [
        Animal(animal: "Chó", feet: "4 feet", imageName: "cho"),
        Animal(animal: "Mèo", feet: "4 feet", imageName: "meo"),
        Animal(animal: "Chó", feet: "4 feet", imageName: "cho"),
        Animal(animal: "Mèo", feet: "4 feet", imageName: "meo"),
        Animal(animal: "Chó", feet: "4 feet", imageName: "cho"),
        Animal(animal: "", feet: "", imageName: "")
        ]
    }

}

extension defaultTableview: UITableViewDelegate{
    
}

extension defaultTableview: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal!.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        
        cell = tableView.dequeueReusableCell(withIdentifier: "id")
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "id")
        }
        
//        cell?.textLabel?.text = String(indexPath.row)
        cell?.textLabel?.text = animal![indexPath.row].animal
        cell?.detailTextLabel?.text = animal![indexPath.row].feet
        cell?.imageView?.image = UIImage(named: animal![indexPath.row].imageName)
        return cell!
    }
}
