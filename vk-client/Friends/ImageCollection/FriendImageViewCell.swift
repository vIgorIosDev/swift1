//
//  FriendImageViewCell.swift
//  vk-client
//
//  Created by i.vasilyev on 22.02.2021.
//

import UIKit

class FriendImageViewCell: UICollectionViewCell {
    
    
    @IBOutlet var friendImage: UIImageView!    

    
    func configure(with userImages:UIImage) {
        friendImage.image = userImages
    }
}
