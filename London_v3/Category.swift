//
//  Category.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-17.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class Category {
    
    // Properties
    var name: String
    var photo: UIImage?
    var address: String
    var phone: String
    
    // Initialization
    init?(name: String, photo: UIImage?, address: String, phone: String){
        self.name = name
        self.photo = photo
        self.address = address
        self.phone = phone
        
        if name.isEmpty {
            return nil
        }
    }
    
}
