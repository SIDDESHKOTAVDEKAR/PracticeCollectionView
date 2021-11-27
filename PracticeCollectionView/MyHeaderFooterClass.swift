//
//  MyHeaderFooterClass.swift
//  PracticeCollectionView
//
//  Created by Siddhesh Kotavdekar on 11/16/21.
//  Copyright © 2021 Siddhesh Kotavdekar. All rights reserved.
//

import UIKit

class MyHeaderFooterClass: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.purple
        
        // Customize here
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
