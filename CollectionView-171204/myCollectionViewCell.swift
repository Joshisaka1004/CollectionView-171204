//
//  myCollectionViewCell.swift
//  CollectionView-171204
//
//  Created by Joachim Vetter on 04.12.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.9, alpha: 1.0)
    }
}
