//
//  StayViewController.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-20.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class StayViewController: UIViewController, UITableViewDataSource{

    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var list = [Category]()
    var stayCellCtl:ShopTableViewCell = ShopTableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // nav logo and image
        let navImage:UIImage = UIImage(named: "banner.jpg")!
        let navImageView:UIImageView = UIImageView(image: navImage)
        navView.addSubview(navImageView)
        
        // cell items
        list = stayCellCtl.loadList("Stay")
        
        // populate the table
        tableView.registerClass(ShopTableViewCell.self, forCellReuseIdentifier: "StayTableViewCell")
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell {
        let cellIdentifier = "ShopTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! StayTableViewCell
        
        // Fetches the appropriate meal for the data source layout
        let store = list[indexPath.row]
        
        cell.nameLabel.text = store.name
        cell.shopImageView.image = store.photo
        cell.addressLabel.text = store.address
        cell.phoneLabel.text = store.phone
        return cell
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
