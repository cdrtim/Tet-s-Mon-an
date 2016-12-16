//
//  DetailVC.swift
//  monAnNgayTet
//
//  Created by Pham Ngoc Hai on 12/16/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var lblDes: UILabel!
    var name : String?
    var img : UIImage?
    var des : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblName.text = name!
        self.lblDes.text = des
        self.imgView.image = img
    }

    

   
}
