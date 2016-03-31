//
//  Selectable.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-31.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import Foundation

protocol Selectable{
    
    var displayName : String { get }
    var displayAddress : String { get }
    var displayType : String { get }
    var displayRating : Int32 { get }
    var displayPhone : String { get }
    var displayImage : String { get }
}
