//
//  StayTableViewCell.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-20.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class StayTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var shopImageView: UIImageView!
    
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
    
    func loadList(listOf: String) -> [Category]{
        let photo1 = UIImage(named: "urbanoutfitters")!
        let shop1 = Shop(name: "Urban Outfitters", photo: photo1, address: "Eaton center", phone: "123-456", type: "Clothing")
        
        let photo2 = UIImage(named: "covent")!
        let shop2 = Shop(name: "Covent Garden Market", photo: photo2, address: "130 King St., London ON", phone: "(519) 123-4567", type: "Shopping Centre, Market")
        
        list = [shop1!, shop2!]
        
        return list
    }

}
