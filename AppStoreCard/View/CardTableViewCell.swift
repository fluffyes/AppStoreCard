//
//  CardTableViewCell.swift
//  AppStoreCard
//
//  Created by Soulchild on 13/02/2019.
//  Copyright © 2019 fluffy. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var cardContainerView: DropShadowView!
    
    @IBOutlet weak var cardImageView: UIImageView!
    
    let cornerRadius : CGFloat = 25.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardContainerView.layer.cornerRadius = cornerRadius
        cardContainerView.layer.shadowColor = UIColor.gray.cgColor
        cardContainerView.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        cardContainerView.layer.shadowRadius = 15.0
        cardContainerView.layer.shadowOpacity = 0.9

        // setting shadow path in awakeFromNib doesn't work as the bounds / frames of the views haven't got initialized yet
        // at this point the cell layout position isn't known yet
        
        cardImageView.layer.cornerRadius = cornerRadius
        cardImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
