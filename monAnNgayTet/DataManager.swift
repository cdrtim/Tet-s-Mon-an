//
//  DataManager.swift
//  Tet'sFood
//
//  Created by QUYNV on 11/17/16.
//  Copyright © 2016 QUYNV. All rights reserved.
//

import Foundation
import UIKit

class DataManager {
    var data = NSMutableArray()
    static let sharedInstance = DataManager()
    private init() {
        let filePath = Bundle.main.path(forResource: "Foods", ofType: "plist")
        let raw = NSDictionary(contentsOfFile: filePath!)
        let temp = NSMutableArray(capacity: (raw?.count)!)
        
        for item in raw! {
            let monAn = MonAn(name: (item.value as AnyObject).value(forKey: "name") as! String, photo: (item.value as AnyObject).value(forKey: "photo") as! String, description: (item.value as AnyObject).value(forKey: "description") as! String)
            temp.add(monAn)
        }
        
        data = NSMutableArray(array: temp)
    }
}
