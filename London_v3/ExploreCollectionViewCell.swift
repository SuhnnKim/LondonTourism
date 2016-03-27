//
//  ExploreCollectionViewCell.swift
//  London_v3
//
//  Created by KimSuhn Mi on 2016-03-24.
//  Copyright © 2016 KimSuhn Mi. All rights reserved.
//

import UIKit

class ExploreCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    var cellImage: Photo?
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        backgroundColor = UIColor(white: 0.1, alpha: 1.0)
        
        imageView.frame = bounds
        addSubview(imageView)
    }
}
