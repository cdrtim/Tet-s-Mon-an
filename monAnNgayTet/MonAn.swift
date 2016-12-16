//
//  MonAn.swift
//  monAnNgayTet
//
//  Created by Pham Ngoc Hai on 12/16/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import Foundation
import UIKit

class MonAn {
    var name : String?
    var photo: UIImage?
    var description: String?
    init(name: String, photo: String, description: String) {
        self.name = name
        self.photo = UIImage(named: "\(photo).jpg")
        self.description = description
    }
    
}
