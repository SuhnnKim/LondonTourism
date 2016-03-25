//
//  ExploreViewController.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-24.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {
    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var navButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // nav logo and image
        let navImage:UIImage = UIImage(named: "banner.jpg")!
        let navImageView:UIImageView = UIImageView(image: navImage)
        navView.addSubview(navImageView)
        navView.addSubview(navButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // nav button action
    @IBAction func navButton(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
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
