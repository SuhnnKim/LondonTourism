//
//  ShopViewController.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-20.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navButton: UIButton!
    
    var list = [Category]()
    var shopCellCtl:ShopTableViewCell = ShopTableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hide default nav bar button
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        // nav image
        let navImage:UIImage = UIImage(named: "banner.jpg")!
        let navImageView:UIImageView = UIImageView(image: navImage)
        navView.addSubview(navImageView)
        navView.addSubview(navButton)
        
        // Get the view identifier
        let viewIdentifier = self.restorationIdentifier!
        
        // Load the sample data
        list = shopCellCtl.loadList(viewIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // nav button action
    @IBAction func navButton(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ShopTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ShopTableViewCell
        
        // Fetches the appropriate meal for the data source layout
        let shop = list[indexPath.row]
        
        cell.nameLabel.text = shop.name
        cell.shopImageView.image = shop.photo
        cell.addressLabel.text = shop.address
        cell.phoneLabel.text = shop.phone
        cell.typeLabel.text = shop.type
        
        
        return cell
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
