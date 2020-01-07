//
//  customCell2.swift
//  customCellTableView
//
//  Created by Trung on 12/31/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class customCell2: UITableViewCell {

    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    func setLayout() {
        self.addSubview(containerView)
        
        containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 4).isActive = true
        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4).isActive = true
        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4).isActive = true        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
