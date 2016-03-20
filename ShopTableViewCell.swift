//
//  ShopTableViewCell.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-16.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class ShopTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var shopImageView: UIImageView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    var list = [Category]()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style:style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder decoder:NSCoder){
        super.init(coder: decoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadList(listOf: String) -> [Category] {
        
        if listOf=="Shop"{
            let photo1 = UIImage(named: "urbanoutfitters")!
            let shop1 = Shop(name: "Urban Outfitters", photo: photo1, address: "Eaton center", phone: "123-456", type: "Clothing")
        
            let photo2 = UIImage(named: "covent")!
            let shop2 = Shop(name: "Covent Garden Market", photo: photo2, address: "130 King St., London ON", phone: "(519) 123-4567", type: "Shopping Centre, Market")
            
            list = [shop1!, shop2!]

        }else if listOf=="Eat"{
            let photo1 = UIImage(named: "molly")!
            let eat1 = Eat(name: "Molly Bloom's", photo: photo1, address: "700 Richmond St. London ON", phone: "(519) 675-1212", type: "Pub")
            
            let photo2 = UIImage(named: "earlybird")!
            let eat2 = Eat(name: "The Early Bird Cafe", photo: photo2, address: "355 Talbot St. London ON", phone: "(519) 439-6483", type: "Cafe, Brunch")
            
            list = [eat1!, eat2!]

        }else if listOf=="Stay"{
            let photo1 = UIImage(named: "molly")!
            let stay1 = Stay(name: "Paul's Inn", photo: photo1, address: "Somewhere cozy", phone: "123-456", type: "Cheap stay")
            
            let photo2 = UIImage(named: "covent")!
            let stay2 = Stay(name: "Mariott", photo: photo2, address: "Somewhere luxurious", phone: "(519) 123-4567", type: "Expensive hotel")
            
            list = [stay1!, stay2!]
            
        }
        return list
        
    }


}
