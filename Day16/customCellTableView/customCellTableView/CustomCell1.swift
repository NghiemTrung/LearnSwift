//
//  CustomCell1.swift
//  customCellTableView
//
//  Created by Trung on 12/31/19.
//  Copyright © 2019 Trung. All rights reserved.
//

import UIKit

class CustomCell1: UITableViewCell {
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var PhotoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var checkImageView: UIImageView!
    
    var passAction : (() -> Void)?
    
    var food: Food?{
        didSet{
            if let data = food {
                PhotoImageView.image=UIImage(named: data.imageName)
                nameLabel.text = data.name
                descriptionLabel.text = data.description
                checkImageView.image = UIImage(named: data.isSelected ? "tick": "tick")
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerView.backgroundColor = .cyan
        checkImageView.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(changSelect))
        
        checkImageView.addGestureRecognizer(gesture)
    }
    
    @objc func changSelect(){
        passAction?()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
