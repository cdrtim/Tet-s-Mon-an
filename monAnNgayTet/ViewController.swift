//
//  ViewController.swift
//  monAnNgayTet
//
//  Created by Pham Ngoc Hai on 12/16/16.
//  Copyright © 2016 pnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dataManager = DataManager.sharedInstance
    var detailVC : DetailVC!
   
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        let monAn = dataManager.data[indexPath.item] as! MonAn
        cell.kCellWidth = self.view.frame.size.width
        cell.addSubview()
        cell.nameLabel.text = monAn.name
        cell.imgViewCell?.image = monAn.photo
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            dataManager.data.removeObject(at: indexPath.row)
            print(dataManager.data.count)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
//        
//        let monAn = dataManager.data[indexPath.item] as! MonAn
//        
//        detailVC.name = monAn.name!
//        detailVC.des = monAn.description!
//        detailVC.img = monAn.photo!
//        present(detailVC, animated: true, completion: nil)
//        self.navigationController?.popToViewController(self, animated: true)
//    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if detailVC == nil {
            detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        }
        let backItem = UIBarButtonItem()
        backItem.title = "Trở về"
        
        navigationItem.backBarButtonItem = backItem
        
        let monAn = dataManager.data[indexPath.item] as! MonAn
        
        detailVC.name = monAn.name!
        detailVC.des = monAn.description!
        detailVC.img = monAn.photo!
       navigationController?.pushViewController(self.detailVC, animated: true)
        
}

}
