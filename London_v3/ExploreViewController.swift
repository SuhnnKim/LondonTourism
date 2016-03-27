//
//  ExploreViewController.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-24.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

let reuseIdentifier = "photoCell"

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var navView: UIView!
    @IBOutlet weak var navButton: UIButton!
    @IBOutlet weak var collectionView: ExploreCollectionView! // Datasource and delegate
    
    // MARK: Photo collection
    var photos = [Photo]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // hide default nav bar button
        self.navigationItem.setHidesBackButton(true, animated: false)
        
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
    
    
    // MARK: Collection View
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return photos.count
    }
    
    @available(iOS 6.0, *)
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ExploreCollectionViewCell
        
        let photo = photos[indexPath.row] as Photo
        if (cell.cellImage != photo){
            cell.cellImage = photo
        }
       
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
