//
//  Shop.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-16.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class Shop : Category {
    
    // Properties
    var type: String
    
    // Initialization
    init?(name: String, photo: UIImage?, address: String, phone: String, type:String){
        self.type = type
        super.init(name: name, photo: photo, address: address, phone: phone)        
        
        if name.isEmpty {
            return nil
        }
    }        
}
