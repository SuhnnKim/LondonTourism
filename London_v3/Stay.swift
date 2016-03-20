//
//  Stay.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-20.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class Stay : Category{
   
    // Initialization
    init?(name: String, photo: UIImage?, address: String, phone: String, type:String){
        
        super.init(name: name, photo: photo, address: address, phone: phone)
        
        if name.isEmpty {
            return nil
        }
    }
}
