//
//  TableViewCell.swift
//  monAnNgayTet
//
//  Created by Pham Ngoc Hai on 12/16/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    
    var nameLabel : UILabel!
    var imgViewCell : UIImageView!
    var kCellWidth : CGFloat = 400
    var kCellHeight : CGFloat = 200
    var kLabelHeight : CGFloat = 50
    
    func addSubview() {
        if imgViewCell == nil {
            imgViewCell = UIImageView(frame: CGRect(x: 0, y: 0, width: kCellWidth, height: kCellHeight))
            imgViewCell.layer.borderColor = tintColor.cgColor
            contentView.addSubview(imgViewCell)
        }
//
        if nameLabel == nil {
            nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: kCellWidth, height: kLabelHeight))
            nameLabel.textAlignment = .left
            nameLabel.textColor = UIColor.red
            nameLabel.font = UIFont.boldSystemFont(ofSize: 16)
            imgViewCell.addSubview(nameLabel)
        }

    }
    
}
