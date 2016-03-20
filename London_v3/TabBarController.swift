//
//  TabBarController.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-20.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.tabBar.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        UITabBar.appearance().barTintColor = UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        UITabBar.appearance().tintColor = UIColor(red: 0.957, green: 0.957, blue: 0.957, alpha: 1)
        


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
